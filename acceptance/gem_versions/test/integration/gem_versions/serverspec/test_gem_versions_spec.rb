describe "test::gem_versions" do
  let(:embedded_bin) {
    if File.exist? "/opt/chef/embedded/bin"
      "/opt/chef/embedded/bin"
    else
      'c:\\opscode\\chef\\embedded\\bin'
    end
  }

  let(:controlled_gems) {
    [ "chef", "ohai" ]
  }

  it "Chef gems should only have one version" do
    gem_list = `#{File.join(embedded_bin, "gem")} list`
    gem_list.lines.each do |g|
      gem_info = g.match /^(?<gem>.*) \((?<versions>.*)\)\n$/
      if controlled_gems.include? gem_info["gem"]
        expect(gem_info["versions"].split(", ").length).to eq(1)
      end
    end
  end
end
