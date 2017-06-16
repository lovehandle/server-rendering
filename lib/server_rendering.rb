module ServerRendering
  FILE_PATH = File.expand_path("./dist/node/entry.node.js").freeze

  def self.context
    ExecJS.compile(File.read(FILE_PATH))
  end

  def self.render(component, **props)
    context.eval("render(#{component}, #{JSON.dump(props)})")
  end
end
