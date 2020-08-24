
import 'package:truefalsequizapp/model/QuestionModel.dart';

List<QuestionModel> getQuestion() {
  List<QuestionModel> questions = new List<QuestionModel>();

  // 1
  QuestionModel questionModel = new QuestionModel();
  questionModel.setQuestion('1번 문제입니다. 정답은 2');
  questionModel.setAnswer('2');
  questionModel.setImageUrl('https://images.unsplash.com/photo-1596452655359-9d4a4a860521?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60');
  questions.add(questionModel);
  // 2
  questionModel = new QuestionModel();
  questionModel.setQuestion('2번 문제입니다. 정답은 3');
  questionModel.setAnswer('3');
  questionModel.setImageUrl('https://images.unsplash.com/photo-1585123607296-3e3357c5a7ae?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60');
  questions.add(questionModel);
  // 3
  questionModel = new QuestionModel();
  questionModel.setQuestion('3번 문제입니다. 정답은 2');
  questionModel.setAnswer('2');
  questionModel.setImageUrl('https://images.unsplash.com/photo-1590608897129-79da98d15969?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60');
  questions.add(questionModel);
  // 4
  questionModel = new QuestionModel();
  questionModel.setQuestion('4번 문제입니다. 정답은 1');
  questionModel.setAnswer('1');
  questionModel.setImageUrl('https://images.unsplash.com/photo-1592127951229-6430ad453683?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60');
  questions.add(questionModel);
  // 5
  questionModel = new QuestionModel();
  questionModel.setQuestion('5번 문제입니다. 정답은 4');
  questionModel.setAnswer('4');
  questionModel.setImageUrl('https://images.unsplash.com/photo-1592127951229-6430ad453683?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60');
  questions.add(questionModel);
  // 6
  questionModel = new QuestionModel();
  questionModel.setQuestion('6번 문제입니다. 정답은 3');
  questionModel.setAnswer('3');
  questionModel.setImageUrl('https://images.unsplash.com/photo-1589200413677-b911f1e634ba?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60');
  questions.add(questionModel);
  // 7
  questionModel = new QuestionModel();
  questionModel.setQuestion('7번 문제입니다. 정답은 1');
  questionModel.setAnswer('1');
  questionModel.setImageUrl('https://images.unsplash.com/photo-1588926238082-97344ccab6f6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60');
  questions.add(questionModel);
  // 8
  questionModel = new QuestionModel();
  questionModel.setQuestion('8번 문제입니다. 정답은 1');
  questionModel.setAnswer('1');
  questionModel.setImageUrl('https://images.unsplash.com/photo-1589200412874-288748d561dc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60');
  questions.add(questionModel);
  // 9
  questionModel = new QuestionModel();
  questionModel.setQuestion('9번 문제입니다. 정답은 3');
  questionModel.setAnswer('3');
  questionModel.setImageUrl('https://images.unsplash.com/photo-1597699401468-1e6b425ecdf6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60');
  questions.add(questionModel);
  // 10
  questionModel = new QuestionModel();
  questionModel.setQuestion('10번 문제입니다. 정답은 4');
  questionModel.setAnswer('4');
  questionModel.setImageUrl('https://images.unsplash.com/photo-1597759550067-dca8b35ae007?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60');
  questions.add(questionModel);

  return questions;
}