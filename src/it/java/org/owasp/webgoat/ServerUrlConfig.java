package org.owasp.webgoat;

import lombok.EqualsAndHashCode;
import lombok.ToString;

@EqualsAndHashCode
@ToString
public class ServerUrlConfig {

  private final String host;
  private final String port;
  private final String contextPath;

  public ServerUrlConfig(String host, String port, String contextPath) {
    this.host = host;
    this.port = port;
    this.contextPath = contextPath.replaceAll("/", "");
  }

  public String host() {
    return host;
  }

  public String port() {
    return port;
  }

  public String contextPath() {
    return contextPath;
  }

  public String getBaseUrl() {
    return String.format("http://%s:%s", host, port);
  }

  public String url(String path) {
    return String.format("%s/%s", getFullUrl(), path);
  }

  private String getFullUrl() {
    return String.format("http://%s:%s/%s", host, port, contextPath);
  }

  public static ServerUrlConfig webGoat() {
    return new ServerUrlConfig(
        "localhost", env("WEBGOAT_PORT", "8080"), env("WEBGOAT_CONTEXT", "WebGoat"));
  }

  public static ServerUrlConfig webWolf() {
    return new ServerUrlConfig(
        "localhost", env("WEBWOLF_PORT", "9090"), env("WEBWOLF_CONTEXT", "WebWolf"));
  }

  private static String env(String variableName, String defaultValue) {
    return System.getenv().getOrDefault(variableName, "").isEmpty()
        ? defaultValue
        : System.getenv(variableName);
  }
}
