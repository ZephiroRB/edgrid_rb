require 'spec_helper'
require 'edgrid_rb/my_edgrid_helper'
describe MyEdgridHelper do
	let(:ed_grid) { Object.new.extend(MyEdgridHelper) }
	describe "#grid_md_n" do
	  it 'outputs proper html' do
	    result = ed_grid.grid_md_1({class:":P"}) do
	    	"Hola"
	    end
	    expect(result).to eq("<div class='col-md-1'><div class='box'>hello</div></div>")
	  end
	end

end
