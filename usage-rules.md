# LanguageList Usage Rules

## Data Structure

Language data is returned as maps with these keys:
- `:name` - Language name (e.g., "Portuguese")
- `:iso_639_1` - Two-letter ISO code (e.g., "pt")
- `:iso_639_3` - Three-letter ISO code (e.g., "por")
- `:common` - Boolean indicating if commonly used

## API Functions

- `all_data/0` - Returns list of all language maps
- `all_common_data/0` - Returns list of common language maps only
- `languages/0` - Returns list of all language names as strings
- `common_languages/0` - Returns list of common language names as strings
- `find/2` - Returns `{:ok, map}` or `{:error, msg}`
- `find!/2` - Returns map or `nil` (no tuple wrapper)

## Search Keys

`find/2` and `find!/2` accept only these keys:
- `:name` - Search by language name
- `:iso_639_1` - Search by 2-letter code
- `:iso_639_3` - Search by 3-letter code

## Common Mistakes

- **Wrong**: `LanguageList.find("en", :iso_639_2)` - Invalid key
- **Right**: `LanguageList.find("en", :iso_639_1)` - Use `:iso_639_1` or `:iso_639_3`

- **Wrong**: Expecting `find!/2` to raise on not found
- **Right**: `find!/2` returns `nil` when not found, not an exception

## Examples

```elixir
# Get Portuguese by ISO code
{:ok, lang} = LanguageList.find("pt", :iso_639_1)
lang.name  # => "Portuguese"

# Direct access without tuple
lang = LanguageList.find!("Portuguese", :name)

# Filter common languages
LanguageList.common_languages()  # => ["Afrikaans", "Arabic", ...]
```
