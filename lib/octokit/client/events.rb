module Octokit
  class Client
    module Events
      # List all public events for GitHub
      #
      # @return [Array] A list of all public events from GitHub
      # @see http://developer.github.com/v3/events
      # @example List all pubilc events
      #   Octokit.public_events
      def public_events(options={})
        get("/events", options, 3)
      end

      # List events for a repository
      #
      # @param repo [String, Repository, Hash] A GitHub repository
      # @return [Array] A list of events for a repository
      # @see http://developer.github.com/v3/events
      # @example List events for a repository
      #   Octokit.repository_events("sferik/rails_admin")
      def repository_events(repo, options={})
        get("/repos/#{Repository.new(repo)}/events", options, 3)
      end
    end
  end
end
