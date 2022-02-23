#!/bin/bash

while :
do
	curl -X POST -H "Content-Type: application/json" \
    -d '{
  "event_definition_id": "this-is-a-test-notification",
  "event_definition_type": "test-dummy-v1",
  "event_definition_title": "Event Definition Test Title",
  "event_definition_description": "Event Definition Test Description",
  "job_definition_id": "<unknown>",
  "job_trigger_id": "<unknown>",
  "event": {
    "id": "NotificationTestId",
    "event_definition_type": "notification-test-v1",
    "event_definition_id": "EventDefinitionTestId",
    "origin_context": "urn:graylog:message:es:testIndex_42:b5e53442-12bb-4374-90ed-0deadbeefbaz",
    "timestamp": "2020-05-20T11:35:11.117Z",
    "timestamp_processing": "2020-05-20T11:35:11.117Z",
    "timerange_start": null,
    "timerange_end": null,
    "streams": [
      "000000000000000000000002"
    ],
    "source_streams": [],
    "message": "Notification test message triggered from user <admin>",
    "source": "000000000000000000000001",
    "key_tuple": [
      "testkey"
    ],
    "key": "testkey",
    "priority": 2,
    "alert": true,
    "fields": {
      "field1": "value1",
      "field2": "value2"
    }
  },
  "backlog": []
}' http://localhost:8080/notifications

	curl -X POST -H "Content-Type: application/json" \
    -d '{
  "event_definition_id": "this-is-a-test-notification",
  "event_definition_type": "test-dummy-v1",
  "event_definition_title": "Event Definition Test Title",
  "event_definition_description": "Event Definition Test Description",
  "job_definition_id": "<unknown>",
  "job_trigger_id": "<unknown>",
  "event": {
    "id": "NotificationTestId",
    "event_definition_type": "notification-test-v1",
    "event_definition_id": "EventDefinitionTestId",
    "origin_context": "urn:graylog:message:es:testIndex_42:b5e53442-12bb-4374-90ed-0deadbeefbaz",
    "timestamp": "2020-05-20T11:35:11.117Z",
    "timestamp_processing": "2020-05-20T11:35:11.117Z",
    "timerange_start": null,
    "timerange_end": null,
    "streams": [
      "000000000000000000000002"
    ],
    "source_streams": [],
    "message": "Notification test message triggered from user <admin>",
    "source": "000000000000000000000001",
    "key_tuple": [
      "testkey"
    ],
    "key": "testkey",
    "priority": 2,
    "alert": true,
    "fields": {
      "field1": "value1",
      "field2": "value2"
    }
  },
  "backlog": []
}' http://localhost:3000/notifications
done
