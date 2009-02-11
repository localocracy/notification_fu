require File.dirname(__FILE__)+'/test_helper'

class FiresTest < Test::Unit::TestCase
  def setup
    @james = create_person(:email => 'james@giraffesoft.ca')
    @mat   = create_person(:email => 'mat@giraffesoft.ca')
  end
  
  def test_should_fire_the_appropriate_callback
    @list = List.new(hash_for_list(:author => @james));
    TimelineEvent.expects(:create!).with(:actor => @james, :target => @list, :secondary_target => @list, :event_type => 'list_created')
    @list.save
  end
  
  def test_should_only_fire_if_the_condition_evaluates_to_true
    TimelineEvent.expects(:create!).with(:actor => @mat, :target => @james, :event_type => 'follow_created')
    @james.new_watcher = @mat
    @james.save
  end
  
  def test_should_not_fire_if_the_if_condition_evaluates_to_false
    TimelineEvent.expects(:create!).with(:actor => @mat, :target => @james, :event_type => 'follow_created').times(0)
    @james.new_watcher = nil
    @james.save
  end
  
  def test_should_fire_event_with_symbol_based_if_condition_that_is_true
    @james.fire = true
    TimelineEvent.expects(:create!).with(:actor => @james, :target => @james, :event_type => 'person_updated')
    @james.save
  end
  
  def test_should_fire_event_with_symbol_based_if_condition
    @james.fire = false
    TimelineEvent.expects(:create!).with(:actor => @james, :target => @james, :event_type => 'person_updated').times(0)
    @james.save
  end
end
