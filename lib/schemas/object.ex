defmodule Smrt.Schemas.Object do
  use Smrt

  @llm_doc """
  Fields
  - name: the queried name, as commonly used
  - description: one sentence visual description of the queried object
  - classification: if a specific classification is possible, provide one, otherwise leave blank
  - usage: how is it used?
  - etymology: the linguistic history of the queried object
  - adjectives: comma separated list of adjectives
  - related: comma separated list of related objects
  - additional_detail: if details were requested in a second message, provide them, otherwise leave blank
  """

  @primary_key false
  embedded_schema do
    field(:name, :string)
    field(:classification, :string)
    field(:description, :string)
    field(:usage, :string)
    field(:etymology, :string)
    field(:adjectives, :string)
    field(:related, :string)
    field(:additional_detail, :string)
  end
end
