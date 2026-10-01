package org.owasp.webgoat.lessons.challenges;

import lombok.EqualsAndHashCode;

@EqualsAndHashCode
public class Flag {

  private final int number;
  private final String answer;

  public Flag(int number, String answer) {
    this.number = number;
    this.answer = answer;
  }

  public int number() {
    return number;
  }

  public String answer() {
    return answer;
  }

  public boolean isCorrect(String flag) {
    return answer.equals(flag);
  }

  @Override
  public String toString() {
    return answer;
  }
}
