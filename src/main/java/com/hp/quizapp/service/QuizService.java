package com.hp.quizapp.service;

import com.hp.quizapp.entity.Question;
import com.hp.quizapp.entity.QuestionWrapper;
import com.hp.quizapp.entity.Quiz;
import com.hp.quizapp.entity.Response;
import com.hp.quizapp.repository.QuestionRepository;
import com.hp.quizapp.repository.QuizRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class QuizService {

    @Autowired
    QuizRepository quizRepository;

    @Autowired
    QuestionRepository questionRepository;

    public ResponseEntity<String> createQuiz(String category, int numQuestion, String quizTitle) {

        List<Question> questionList = questionRepository.findRandomQuestionByCategory(category, numQuestion);
        Quiz quiz = new Quiz();
        quiz.setTitle(quizTitle);
        quiz.setQuestions(questionList);
        quizRepository.save(quiz);
        return new ResponseEntity<>("Create a Quiz Successfully", HttpStatus.CREATED);
    }

    public ResponseEntity<List<QuestionWrapper>> getQuizQuestions(int id) {
        Optional<Quiz> quiz = quizRepository.findById(id);
        if (quiz.isPresent()) {
            List<Question> questionListFromDB = quiz.get().getQuestions();
            List<QuestionWrapper> questionForUser = new ArrayList<>();

            for (Question question : questionListFromDB) {
                QuestionWrapper questionWrapper = new QuestionWrapper(
                        question.getId(), question.getQuestionTitle(),
                        question.getOption1(), question.getOption2(),
                        question.getOption3(), question.getOption4());
                questionForUser.add(questionWrapper);
            }
            return new ResponseEntity<>(questionForUser, HttpStatus.OK);
        } else {
            return new ResponseEntity<>(new ArrayList<>(), HttpStatus.BAD_REQUEST);
        }

    }

    public ResponseEntity<Integer> calculateResult(int id, List<Response> responses) {
        Quiz quiz = quizRepository.findById(id).get();

        List<Question> questions = quiz.getQuestions();
        int rightAnswer = 0;
        int i = 0;
        for (Response response : responses) {

            if (response.getResponse().equals(questions.get(i).getRightAnswer())) {
                rightAnswer++;
            }
            i++;
        }
        return new ResponseEntity<>(rightAnswer, HttpStatus.OK);
    }
}
