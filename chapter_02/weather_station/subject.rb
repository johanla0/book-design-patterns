# frozen_string_literal: true

module Subject
  def register_observer(observer)
    raise NotImplementedError
  end

  def remove_observer(observer)
    raise NotImplementedError
  end

  def notify_observers
    raise NotImplementedError
  end
end
