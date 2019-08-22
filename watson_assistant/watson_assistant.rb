require "json"
require "ibm_watson/assistant_v2"
include IBMWatson

API_KEY = "4AXcQfNbo1KK-Lb8Yo-h8cZetHIvPSyCopKe4tjlkBH3"
API_URL = "https://gateway-lon.watsonplatform.net/assistant/api"

WORKSPACE_ID = "c4b31ead-0a7b-4e29-a04e-8cb4ed8ad57f"
ASSISTANT_ID = "55be28a8-9553-4c81-8564-a2268bd10148"

class WatsonAssistant
  def initialize
    @service = IBMWatson::AssistantV2.new(
      version: "2019-02-28",
      iam_apikey: API_KEY,
      url: API_URL
    )
    new_session = @service.create_session(assistant_id: ASSISTANT_ID)
    @session_id = new_session.result['session_id']
  end

  def send_message(message_input)
    response = @service.message(
      assistant_id: ASSISTANT_ID,
      session_id: @session_id,
      input: {
        text: message_input
      }
    )
    response.result['output']['generic'][0]['text']
  end
end
