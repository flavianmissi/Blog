require 'spec_helper'

describe TagsCell do
  context "cell rendering" do 
    
    context "rendering display" do
      subject { render_cell(:tags, :display) }
  
      it { should have_selector("h1", :content => "Tags#display") }
      it { should have_selector("p", :content => "Find me in app/cells/tags/display.html") }
    end
    
  end


  context "cell instance" do 
    subject { cell(:tags) } 
    
      it { should respond_to(:display) }
    
  end
end
