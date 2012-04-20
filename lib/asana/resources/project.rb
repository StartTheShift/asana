module Asana
  class Project < Asana::Resource
    alias :create :method_not_allowed

    def self.all_by_workspace(*args)
      parent_resources :workspace
      all(*args)
    end

    def tasks
      Task.all_by_project(:params => { :project_id => self.id })
    end
  end
end