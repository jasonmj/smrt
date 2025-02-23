# Smrt

Harness the power of AI with Smrt. 

![image](https://github.com/user-attachments/assets/2aaa8e5c-4753-41f0-bd2d-dc0b2b249072)

Add `export GOOGLE_API_KEY="your key goes here"` to `.envrc`

$> `iex -S mix`

iex> `describe(Object, "Schooner")`

```
{:ok,
 %Smrt.Schemas.Object{
   name: "Schooner",
   classification: "Sailing vessel",
   description: "A schooner is a sailing vessel with fore-and-aft sails on two or more masts, the foremast being shorter than the mainmast.",
   usage: "Historically used for trade, fishing, and piracy; now often used for recreational sailing and racing.",
   etymology: "Origin uncertain; possibly from 'scoon', a dialectal word meaning 'to skip over the water'.",
   adjectives: "fast, fore-and-aft rigged, two-masted",
   related: "brigantine, ketch, yawl, sloop",
   additional_detail: nil
 }}
```

iex> `elaborate_on(Object, "Schooner", "History and notable historic figures.")`

```
{:ok,
 %Smrt.Schemas.Object{
   name: "Schooner",
   classification: "Sailing vessel",
   description: "A schooner is a sailing vessel with fore-and-aft sails on two or more masts, the foremast being shorter than the mainmast.",
   usage: "Historically used for fishing, trade, and naval purposes; currently used for recreation and sailing education.",
   etymology: "Origin debated; possibly from 'schoon,' meaning 'to skim over water,' or a remark by Andrew Robinson's neighbor upon seeing the first one launched in 1713.",
   adjectives: "fast, agile, fore-and-aft rigged, two-masted",
   related: "brigantine, sloop, cutter, ketch, yawl",
   additional_detail: "Schooners were widely used in the 18th and 19th centuries for trade, fishing, and piracy; notable figures include Captain Charles Stewart, a US naval officer who commanded the schooner USS Enterprise during the War of 1812, and Rafael de Sobremonte, viceroy of the Río de la Plata, who attempted to escape Buenos Aires in a schooner during the British invasions."
 }}
```
