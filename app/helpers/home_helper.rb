module HomeHelper
  #  gets the users details from api

  def githubuser_repos
    github = Github.new basic_auth: 'login:password'
    github.auth.create

    repos = github.repos.list user: "gglaine"
    # @repos = @github.repos.list user: 'piotrmurach'
  end

end
