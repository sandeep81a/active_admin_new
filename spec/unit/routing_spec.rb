# encoding: utf-8

require 'spec_helper'

describe ActiveAdmin, "Routing", :type => :routing do

  before do
    load_defaults!
    reload_routes!
  end

  include Rails.application.routes.url_helpers

  describe "root" do
    before do
      pending "Y U NO PASS?"
    end
    context "when default configuration" do
      context "when in admin namespace" do
        it "should route the admin dashboard" do
          get('/admin').should route_to('admin/dashboard#index')
        end
      end

      context "when in root namespace" do
        before(:each) do
          load_resources { ActiveAdmin.register(Post, :namespace => false) }
          reload_routes!
        end

        it "should route the root dashboard" do
          pending "Y U NO PASS?"

          get('/').should route_to('dashboard#index')
        end
      end
    end

    context "when customized configuration to root to post#index" do
      before do
        @original_root = ActiveAdmin.application.root_to
        ActiveAdmin.application.root_to = "posts#index"
      end

      after do
        ActiveAdmin.application.root_to = @original_root
        reload_routes!
      end

      context "when in admin namespace" do
        before do
          load_resources { ActiveAdmin.register(Post) }
        end

        it "should route to admin/posts#index" do
          get('/admin').should route_to('admin/posts#index')
        end
      end

      context "when in root namespace" do
        before do
          load_resources { ActiveAdmin.register(Post, :namespace => false) }
        end

        it "should route to posts#index" do
          pending "Y U NO PASS?"

          get('/').should route_to('posts#index')
        end
      end
    end
  end

  describe "standard resources" do
    context "when in admin namespace" do
      it "should route the index path" do
        admin_posts_path.should == "/admin/posts"
      end

      it "should route the show path" do
        admin_post_path(1).should == "/admin/posts/1"
      end

      it "should route the new path" do
        new_admin_post_path.should == "/admin/posts/new"
      end

      it "should route the edit path" do
        edit_admin_post_path(1).should == "/admin/posts/1/edit"
      end
    end

    context "when in root namespace" do
      before(:each) do
        load_resources { ActiveAdmin.register(Post, :namespace => false) }
      end

      it "should route the index path" do
        posts_path.should == "/posts"
      end

      it "should route the show path" do
        post_path(1).should == "/posts/1"
      end

      it "should route the new path" do
        new_post_path.should == "/posts/new"
      end

      it "should route the edit path" do
        edit_post_path(1).should == "/posts/1/edit"
      end
    end
  end

  describe "belongs to resource" do
    it "should route the nested index path" do
      admin_user_posts_path(1).should == "/admin/users/1/posts"
    end

    it "should route the nested show path" do
      admin_user_post_path(1,2).should == "/admin/users/1/posts/2"
    end

    it "should route the nested new path" do
      new_admin_user_post_path(1).should == "/admin/users/1/posts/new"
    end

    it "should route the nested edit path" do
      edit_admin_user_post_path(1,2).should == "/admin/users/1/posts/2/edit"
    end

    context "with collection action" do
      before do
        load_resources do
          ActiveAdmin.register(Post) do
            belongs_to :user, :optional => true
          end
          ActiveAdmin.register(User) do
            collection_action "do_something"
          end
        end
      end

      it "should properly route the collection action" do
        { :get => "/admin/users/do_something" }.
          should route_to({ :controller => 'admin/users',:action => 'do_something'})
      end
    end
  end

  describe "page" do
    context "when default namespace" do
      before(:each) do
        load_resources { ActiveAdmin.register_page("Chocolate I lØve You!") }
      end

      it "should route to the page under /admin" do
        admin_chocolate_i_love_you_path.should == "/admin/chocolate_i_love_you"
      end

      context "when in the root namespace" do
        before(:each) do
          load_resources { ActiveAdmin.register_page("Chocolate I lØve You!", :namespace => false) }
        end

        it "should route to page under /" do
          chocolate_i_love_you_path.should == "/chocolate_i_love_you"
        end
      end

      context "when singular page name" do
        before(:each) do
          load_resources { ActiveAdmin.register_page("Log") }
        end

        it "should not inject _index_ into the route name" do
          admin_log_path.should == "/admin/log"
        end
      end
    end
  end
end
