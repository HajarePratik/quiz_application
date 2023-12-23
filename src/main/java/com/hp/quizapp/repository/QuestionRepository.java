package com.hp.quizapp.repository;

import com.hp.quizapp.entity.Question;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface QuestionRepository extends JpaRepository<Question,Integer> {
    List<Question> findByCategory(String category);

    @Query(value = "SELECT * FROM question q where q.category=:category ORDER BY RAND() LIMIT :numQuestion",nativeQuery = true)
    List<Question> findRandomQuestionByCategory(String category, int numQuestion);
}
