function concat_with_space(...)
  return table.concat({...}, " ")
end

--- @param input string: The source file/directory
--- @param output string: The destination directory
--- @param options table: A table of strings like {"-tsvg", "-v"}
function convert(input, output, options)
    -- structurizr export ... -workspace workspace.dsl -output diagrams
    -- -format static
    local command = concat_with_space("plantuml", options[1], "-o", output, input)
    return os.execute(command)
end

return convert
