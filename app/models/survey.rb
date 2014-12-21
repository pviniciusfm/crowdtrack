module Survey
  class Enum < String
    # Locale scope to use for translations
    class_attribute :i18n_scope
    # Array of all valid values
    class_attribute :valid_values
    class_attribute :html_classes
    def self.values
      @values ||= Array(valid_values).map { |val| new(val) }
    end
    def initialize(s)
      unless s.in?(Array(valid_values))
        raise ArgumentError, "#{s.inspect} is not a valid #{self.class} value"
      end
      super
    end
    def human_name
      if i18n_scope.blank?
        raise NotImplementedError, 'Your subclass must define :i18n_scope'
      end
      I18n.t!(value, scope: i18n_scope)
    end

    def html_class
      html_classes[value.to_sym]
    end

    def value
      to_s
    end
    def as_json(opts = nil)
      {
        'value'      => value,
        'human_name' => human_name,
        'html_class' => html_class
      }
    end
    def self.load(value)
      if value.present?
        new(value)
      else
        # Don't try to convert nil or empty strings
        value
      end
    end
    def self.dump(obj)
      obj.to_s
    end
  end

  class CapacityRank < Enum
    self.i18n_scope = 'survey.capacity'
    self.valid_values = %w(
      empty
      with_seats
      people_standing
      crowdy
    )
    self.html_classes = {
      empty: 'label-success',
      with_seats: 'label-info',
      people_standing: 'label-warning',
      crowdy: 'label-danger'
    }
  end

  class TrafficRank < Enum
    self.i18n_scope = 'survey.traffic'
    self.valid_values = %w(
      good
      normal
      slow
      very_slow
    )
    self.html_classes = {
      good: 'label-success',
      normal: 'label-info',
      slow: 'label-warning',
      very_slow: 'label-danger'
    }
  end
end
