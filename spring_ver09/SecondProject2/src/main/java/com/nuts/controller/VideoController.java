//package com.nuts.controller;
//
//import java.io.IOException;
//import java.net.http.HttpHeaders;
//import java.util.Optional;
//
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
//import org.springframework.core.io.UrlResource;
//import org.springframework.core.io.support.ResourceRegion;
//import org.springframework.http.HttpRange;
//import org.springframework.http.HttpStatus;
//import org.springframework.http.MediaType;
//import org.springframework.http.MediaTypeFactory;
//import org.springframework.http.ResponseEntity;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.RequestHeader;
//
//import lombok.RequiredArgsConstructor;
//
//@RequiredArgsConstructor
//@Controller
//public class VideoController {
//	Logger logger = LoggerFactory.getLogger(this.getClass());
//	private String url = "보여줄 비디오 url 경로";
//
//	@GetMapping(value = "/video/{name}")
//	public ResponseEntity<ResourceRegion> getVideo(@RequestHeader HttpHeaders headers, @PathVariable String name)
//			throws IOException {
//		logger.info("VideoController.getVideo");
//		UrlResource video = new UrlResource("file:(기본 경로 입력)" + name + ".mp4");
//		ResourceRegion resourceRegion;
//		final long chunkSize = 1000000L;
//		long contentLength = video.contentLength();
//		Optional<HttpRange> optional = headers.getRange().stream().findFirst();
//		HttpRange httpRange;
//		if (optional.isPresent()) {
//			httpRange = optional.get();
//			long start = httpRange.getRangeStart(contentLength);
//			long end = httpRange.getRangeEnd(contentLength);
//			long rangeLength = Long.min(chunkSize, end - start + 1);
//			resourceRegion = new ResourceRegion(video, start, rangeLength);
//		} else {
//			long rangeLength = Long.min(chunkSize, contentLength);
//			resourceRegion = new ResourceRegion(video, 0, rangeLength);
//		}
//		return ResponseEntity.status(HttpStatus.PARTIAL_CONTENT)
//				.contentType(MediaTypeFactory.getMediaType(video).orElse(MediaType.APPLICATION_OCTET_STREAM))
//				.body(resourceRegion);
//	}
//}
