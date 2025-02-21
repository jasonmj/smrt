defmodule Smrt do
  defmacro __using__(_) do
    quote do
      use Ecto.Schema
      use Instructor
    end
  end

  def schemas do
    case :application.get_key(:smrt, :modules) do
      {:ok, [Smrt | modules]} ->
        modules
        |> Enum.map(&Module.split/1)
        |> Enum.filter(&(to_string(Enum.at(&1, 1)) == "Schemas"))
        |> Enum.map(&Module.concat/1)

      _ ->
        []
    end
  end

  def describe(schema, query) do
    messages = [
      %{
        role: "user",
        content: "Describe the query using the schema fields. <query>#{query}</query>"
      }
    ]

    chat_completion(schema, messages)
  end

  def elaborate_on(schema, subject, detail) do
    messages = [
      %{
        role: "user",
        content: "Describe the query using the schema fields. <query>#{subject}</query>"
      },
      %{
        role: "user",
        content: "Respond to the request for additional detail <query>#{detail}</query>"
      }
    ]

    chat_completion(schema, messages)
  end

  defp chat_completion(schema, messages) do
    Instructor.chat_completion(
      model: "gemini-2.0-flash",
      mode: :json_schema,
      response_model: schema,
      max_retries: 3,
      messages: messages
    )
  end
end
