package com.ssmelnikov.demo.repo;

import com.ssmelnikov.demo.entity.Chat;
import com.ssmelnikov.demo.entity.Message;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface MessegeRepository extends MongoRepository<Message, String> {
}
