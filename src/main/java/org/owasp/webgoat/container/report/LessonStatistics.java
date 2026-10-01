package org.owasp.webgoat.container.report;

import lombok.AllArgsConstructor;
import lombok.Getter;

@Getter
@AllArgsConstructor
class LessonStatistics {
  private final String name;
  private final boolean solved;
  private final int numberOfAttempts;
}
