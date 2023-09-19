package com.example.exam_flutter_be.api;

import com.example.exam_flutter_be.dto.PlaceDTO;
import com.example.exam_flutter_be.entity.Place;
import com.example.exam_flutter_be.service.PlaceService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.server.ResponseStatusException;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("api/place")
@RequiredArgsConstructor
public class PlaceApi {
    final PlaceService placeService;

    @GetMapping()
    public ResponseEntity<List<Place>> getList() {
        return ResponseEntity.ok(placeService.findAll());
    }

    @GetMapping("/{id}")
    public PlaceDTO getDetail(@PathVariable("id") long id) {
        Optional<Place> optionalPlace = placeService.findById(id);
        if (!optionalPlace.isPresent()) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Not found");
        }
        return new PlaceDTO(optionalPlace.get());
    }
}