#encoding: utf-8
require 'spec_helper'

describe ActsAsStatus do 
  before do 
    @md = ModelDemo.new
  end

  it "model status respond" do 
    debugger
    @md.should respond_to("status_failer?")
    @md.should respond_to("status_warning?")
    @md.should respond_to("status_success?")
  end

  it "model attribute status object" do   
    @md.status.should be_a_kind_of(ActsAs::Status) 
  end

  it "attribute status assignment" do 
    @md.status = :warning
    (@md.status == :warning).should be_true
    @md.status_warning?.should be_true

    @md.status = :success
    @md.status_success?.should be_true
    (@md.status == :warning).should be_false
    (@md.status == :success).should be_true
  end

  it "find all status" do 
    ModelDemo.status_all.should eq([:failer, :warning, :success])
  end

  it "find status index value" do 
    ModelDemo.status_by_index(:failer).should eq(1)
    ModelDemo.status_by_index(:warning).should eq(2)
    ModelDemo.status_by_index(:success).should eq(3)
  end
end