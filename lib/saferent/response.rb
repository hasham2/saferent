module Saferent
  class Response
    attr_accessor :transaction_number, :report_date, :applicant_decision, :application_decision, :applicant_score
    def initialize(response = {})
      raise Saferent::Error.new(response["ErrorCode"], response["ErrorDescription"]) if response.has_key? "ErrorCode" || response.has_key? "ErrorDescription"
      self.transaction_number   = response["TransactionNumber"]
      self.report_date          = Date.parse(response["ReportDate"])
      self.applicant_decision   = response["ApplicantDecision"]
      self.application_decision = response["ApplicationDecision"]
      self.score                = response["ApplicantScore"].to_i
    end
  end
end
