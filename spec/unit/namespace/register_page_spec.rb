require 'spec_helper' 

describe ActiveAdmin::Namespace, "registering a page" do

  let(:application){ ActiveAdmin::Application.new }

  let(:namespace){ ActiveAdmin::Namespace.new(application, :admin) }
  let(:menu){ namespace.fetch_menu(:default) }

  context "with no configuration" do
    before do
      namespace.register_page "Status"
    end

    it "should store the namespaced registered configuration" do
      namespace.resources.keys.should include('Status')
    end

    it "should create a new controller in the default namespace" do
      defined?(Admin::StatusController).should be_true
    end

    it "should create a menu item" do
      menu["Status"].should be_an_instance_of(ActiveAdmin::MenuItem)
    end
  end # context "with no configuration"

  context "with a block configuration" do
    it "should be evaluated in the dsl" do
      lambda {
        namespace.register_page "Status" do
          raise "Hello World"
        end
      }.should raise_error
    end
  end # context "with a block configuration"

  describe "adding to the menu" do
    describe "adding as a top level item" do
      before do
        namespace.register_page "Status"
      end

      it "should add a new menu item" do
        menu['Status'].should_not be_nil
      end
    end # describe "adding as a top level item"

    describe "adding as a child" do
      before do
        namespace.register_page "Status" do
          menu :parent => 'Extra'
        end
      end
      it "should generate the parent menu item" do
        menu['Extra'].should_not be_nil
      end
      it "should generate its own child item" do
        menu['Extra']['Status'].should_not be_nil
      end
    end # describe "adding as a child"

    describe "disabling the menu" do
      before do
        namespace.register_page "Status" do
          menu false
        end
      end
      it "should not create a menu item" do
        expect {
          menu["Status"]
        }.to raise_error(KeyError)
      end
    end # describe "disabling the menu"
    
    describe "setting menu priority" do
      before do
        namespace.register_page "Status" do
          menu :priority => 2
        end
      end
      it "should have a custom priority of 2" do
        menu["Status"].priority.should == 2
      end
    end # describe "setting menu priority"
    
    describe "setting a condition for displaying" do
      before do
        namespace.register_page "Status" do
          menu :if => proc { false }
        end
      end
      it "should have a proc returning false" do
        menu["Status"].display_if_block.should be_instance_of(Proc)
        menu["Status"].display_if_block.call.should == false
      end
    end # describe "setting a condition for displaying"
  end # describe "adding to the menu"
end
