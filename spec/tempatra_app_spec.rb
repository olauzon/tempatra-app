require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe TempatraApp do

  it 'should load the index' do
    get '/'
    last_response.should be_ok
  end

end
