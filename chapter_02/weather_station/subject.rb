# frozen_string_literal: true

module Subject
  def register_observer(observer)
    NotImplementedError
  end

  def remove_observer(observer)
    NotImplementedError
  end

  def notify_observers
    NotImplementedError
  end
end
