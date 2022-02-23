package com.example.RestResourceTest;

import lombok.Data;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@SpringBootApplication
@RestController
public class RestResourceTestApplication {

	private static final Logger LOGGER = LoggerFactory.getLogger(RestResourceTestApplication.class);

	public static void main(String[] args) {
		SpringApplication.run(RestResourceTestApplication.class, args);
	}

	@PostMapping("/notifications")
	public void receiveNotification(@RequestBody Message message) {
		LOGGER.error("Received object {}", message);
	}
}

@Data
class Message {
	private String event_definition_id;
	private String event_definition_type;
	private String event_definition_title;
	private String event_definition_description;
	private String job_definition_id;
	private String job_trigger_id;
	private Event event;
}

@Data
class Event {
	private String id;
	private String event_definition_type;
	private String event_definition_id;
	private String origin_context;
	private String timestamp;
	private String timestamp_processing;
	private String timerange_start;
	private String timerange_end;
	private List<String> streams;
	private List<String> source_streams;
	private String message;
	private String source;
}
