module RecentProjectAccesses
  module ProjectsControllerWithSaveRecentProjectAccess
    def show
      super
      RecentProjectAccess.save_access(User.current, @project)
    end
  end
end
