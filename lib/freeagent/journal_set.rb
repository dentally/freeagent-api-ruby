module FreeAgent
  class JournalSet < Resource
    resource :journal_set

    resource_methods :default

    attr_accessor :description, :tag, :journal_entries, :bank_accounts, :journal_entries

    date_accessor :dated_on

    def self.find_by_tag(tag)
      JournalSet.filter(tag: tag)
    end
  end
end