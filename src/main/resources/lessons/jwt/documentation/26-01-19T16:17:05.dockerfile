26-01-19T16:17:05.0270263Z Trying to resolve the latest version from remote
2026-01-19T16:17:05.7457598Z Resolved latest version as 21.0.9+10.0.LTS
2026-01-19T16:17:05.7458209Z Trying to download...
2026-01-19T16:17:05.7459855Z Downloading Java 21.0.9+10.0.LTS (Adopt-Hotspot) from https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.9%2B10/OpenJDK21U-jdk_x64_linux_hotspot_21.0.9_10.tar.gz ...
2026-01-19T16:17:06.6284810Z Extracting Java archive...
2026-01-19T16:17:06.6372563Z [command]/usr/bin/tar xz --warning=no-unknown-keyword --overwrite -C /home/runner/work/_temp/11545ef4-dc59-4ae9-916d-fe723663baf1 -f /home/runner/work/_temp/6d7fd07b-6599-4c55-80c7-205b60f36cd9
2026-01-19T16:17:09.2921524Z Java 21.0.9+10.0.LTS was downloaded
2026-01-19T16:17:09.2922062Z Setting Java 21.0.9+10.0.LTS as the default
2026-01-19T16:17:09.2932872Z Creating toolchains.xml for JDK version 21 from adopt
2026-01-19T16:17:09.3012598Z Writing to /home/runner/.m2/toolchains.xml
2026-01-19T16:17:09.3012989Z 
2026-01-19T16:17:09.3013318Z Java configuration:
2026-01-19T16:17:09.3013644Z   Distribution: adopt
2026-01-19T16:17:09.3013980Z   Version: 21.0.9+10.0.LTS
2026-01-19T16:17:09.3014458Z   Path: /opt/hostedtoolcache/Java_Adopt_jdk/21.0.9-10.0.LTS/x64
2026-01-19T16:17:09.3014905Z 
2026-01-19T16:17:09.3015422Z ##[endgroup]
2026-01-19T16:17:09.3032333Z Creating settings.xml with server-id: github
2026-01-19T16:17:09.3035812Z Writing to /home/runner/.m2/settings.xml
2026-01-19T16:17:09.6722223Z maven cache is not found
2026-01-19T16:17:09.6843894Z ##[group]Run echo "ArtifactName=$(mvn help:evaluate -Dexpression=project.artifactId -q -DforceStdout)" >> $GITHUB_ENV
2026-01-19T16:17:09.6844834Z [36;1mecho "ArtifactName=$(mvn help:evaluate -Dexpression=project.artifactId -q -DforceStdout)" >> $GITHUB_ENV[0m
2026-01-19T16:17:09.6845505Z [36;1mecho "Version=$(mvn help:evaluate -Dexpression=project.version -q -DforceStdout)" >> $GITHUB_ENV[0m
2026-01-19T16:17:09.6869562Z shell: /usr/bin/bash -e {0}
2026-01-19T16:17:09.6869805Z env:
2026-01-19T16:17:09.6870071Z   JAVA_HOME: /opt/hostedtoolcache/Java_Adopt_jdk/21.0.9-10.0.LTS/x64
2026-01-19T16:17:09.6870492Z   JAVA_HOME_21_X64: /opt/hostedtoolcache/Java_Adopt_jdk/21.0.9-10.0.LTS/x64
2026-01-19T16:17:09.6870816Z ##[endgroup]
2026-01-19T16:17:17.5922749Z ##[group]Run MAVEN_VERSION=3.9.11
2026-01-19T16:17:17.5923043Z [36;1mMAVEN_VERSION=3.9.11[0m
2026-01-19T16:17:17.5923634Z [36;1mcurl -fsSL https://archive.apache.org/dist/maven/maven-3/${MAVEN_VERSION}/binaries/apache-maven-${MAVEN_VERSION}-bin.tar.gz -o maven.tgz[0m
2026-01-19T16:17:17.5924246Z [36;1msudo tar -xzf maven.tgz -C /opt[0m
2026-01-19T16:17:17.5924589Z [36;1mecho "/opt/apache-maven-${MAVEN_VERSION}/bin" >> $GITHUB_PATH[0m
2026-01-19T16:17:17.5924934Z [36;1mmvn -v[0m
2026-01-19T16:17:17.5943413Z shell: /usr/bin/bash -e {0}
2026-01-19T16:17:17.5943638Z env:
2026-01-19T16:17:17.5943915Z   JAVA_HOME: /opt/hostedtoolcache/Java_Adopt_jdk/21.0.9-10.0.LTS/x64
2026-01-19T16:17:17.5944340Z   JAVA_HOME_21_X64: /opt/hostedtoolcache/Java_Adopt_jdk/21.0.9-10.0.LTS/x64
2026-01-19T16:17:17.5944677Z   ArtifactName: webgoat
2026-01-19T16:17:17.5944879Z   Version: 2024.2-SNAPSHOT
2026-01-19T16:17:17.5945081Z ##[endgroup]
2026-01-19T16:17:27.5523736Z Apache Maven 3.9.12 (848fbb4bf2d427b72bdb2471c22fced7ebd9a7a1)
2026-01-19T16:17:27.5524764Z Maven home: /usr/share/apache-maven-3.9.12
2026-01-19T16:17:27.5530792Z Java version: 21.0.9, vendor: Eclipse Adoptium, runtime: /opt/hostedtoolcache/Java_Adopt_jdk/21.0.9-10.0.LTS/x64
2026-01-19T16:17:27.5532560Z Default locale: en, platform encoding: UTF-8
2026-01-19T16:17:27.5533673Z OS name: "linux", version: "6.11.0-1018-azure", arch: "amd64", family: "unix"
2026-01-19T16:17:27.5748578Z ##[group]Run jfrog/setup-jfrog-cli@v4
2026-01-19T16:17:27.5748831Z with:
2026-01-19T16:17:27.5748991Z   version: 2.88.0
2026-01-19T16:17:27.5749189Z   disable-job-summary: false
2026-01-19T16:17:27.5749430Z   disable-auto-build-publish: false
2026-01-19T16:17:27.5749697Z   disable-auto-evidence-collection: false
2026-01-19T16:17:27.5749944Z env:
2026-01-19T16:17:27.5750191Z   JAVA_HOME: /opt/hostedtoolcache/Java_Adopt_jdk/21.0.9-10.0.LTS/x64
2026-01-19T16:17:27.5750600Z   JAVA_HOME_21_X64: /opt/hostedtoolcache/Java_Adopt_jdk/21.0.9-10.0.LTS/x64
2026-01-19T16:17:27.5750919Z   ArtifactName: webgoat
2026-01-19T16:17:27.5751126Z   Version: 2024.2-SNAPSHOT
2026-01-19T16:17:27.5751953Z   JF_URL: ***
2026-01-19T16:17:27.5757139Z   JF_ACCESS_TOKEN: ***
2026-01-19T16:17:27.5757327Z ##[endgroup]
2026-01-19T16:17:27.6878076Z ##[group]Setup JFrog CLI
2026-01-19T16:17:27.6905281Z Downloading JFrog CLI from https://releases.jfrog.io/artifactory/jfrog-cli/v2/2.88.0/jfrog-cli-linux-amd64/jfrog
2026-01-19T16:17:29.0072396Z [command]/opt/hostedtoolcache/jf/2.88.0/x64/jf config add setup-jfrog-cli-server --url *** --interactive=false --overwrite=true --access-token ***
2026-01-19T16:17:29.2103634Z 16:17:29 [Warn] failed while trying to check latest JFrog CLI version: json: unknown field "url"
2026-01-19T16:17:29.2127708Z ##[endgroup]
2026-01-19T16:17:29.2209911Z ##[group]Run jf mvnc --server-id-resolve=setup-jfrog-cli-server --repo-resolve-releases=soleng-maven-dev-virtual --repo-resolve-snapshots=soleng-maven-dev-virtual --server-id-deploy=setup-jfrog-cli-server --repo-deploy-releases=soleng-maven-dev-virtual --repo-deploy-snapshots=soleng-maven-dev-virtual
2026-01-19T16:17:29.2212173Z [36;1mjf mvnc --server-id-resolve=setup-jfrog-cli-server --repo-resolve-releases=soleng-maven-dev-virtual --repo-resolve-snapshots=soleng-maven-dev-virtual --server-id-deploy=setup-jfrog-cli-server --repo-deploy-releases=soleng-maven-dev-virtual --repo-deploy-snapshots=soleng-maven-dev-virtual[0m
2026-01-19T16:17:29.2232557Z shell: /usr/bin/bash -e {0}
2026-01-19T16:17:29.2232793Z env:
2026-01-19T16:17:29.2233062Z   JAVA_HOME: /opt/hostedtoolcache/Java_Adopt_jdk/21.0.9-10.0.LTS/x64
2026-01-19T16:17:29.2233484Z   JAVA_HOME_21_X64: /opt/hostedtoolcache/Java_Adopt_jdk/21.0.9-10.0.LTS/x64
2026-01-19T16:17:29.2233833Z   ArtifactName: webgoat
2026-01-19T16:17:29.2234086Z   Version: 2024.2-SNAPSHOT
2026-01-19T16:17:29.2234583Z   JFROG_CLI_ENV_EXCLUDE: *password*;*secret*;*key*;*token*;*auth*;JF_ARTIFACTORY_*;JF_ENV_*;JF_URL;JF_USER;JF_PASSWORD;JF_ACCESS_TOKEN
2026-01-19T16:17:29.2235095Z   JFROG_CLI_OFFER_CONFIG: false
2026-01-19T16:17:29.2235354Z   JFROG_CLI_SOURCECODE_REPOSITORY: Rodi26/WebGoat
2026-01-19T16:17:29.2235656Z   JFROG_CLI_CI_JOB_ID: WebGoat_build_with_Maven
2026-01-19T16:17:29.2235914Z   JFROG_CLI_CI_RUN_ID: 21142971212
2026-01-19T16:17:29.2236149Z   JFROG_CLI_GITHUB_TOKEN: 
2026-01-19T16:17:29.2236443Z   JFROG_CLI_CI_VCS_REVISION: bc79bb60ea29f0641f3553542e9ca211a60525cd
2026-01-19T16:17:29.2236765Z   JFROG_CLI_CI_BRANCH: main
2026-01-19T16:17:29.2237044Z   JFROG_CLI_CI_VCS_URL: https://github.com/Rodi26/WebGoat
2026-01-19T16:17:29.2237359Z   JFROG_CLI_BUILD_NAME: WebGoat_build_with_Maven
2026-01-19T16:17:29.2237624Z   JFROG_CLI_BUILD_NUMBER: 361
2026-01-19T16:17:29.2237951Z   JFROG_CLI_BUILD_URL: https://github.com/Rodi26/WebGoat/actions/runs/21142971212
2026-01-19T16:17:29.2238394Z   JFROG_CLI_USER_AGENT: setup-jfrog-cli-github-action/4.8.1
2026-01-19T16:17:29.2238761Z   JFROG_CLI_COMMAND_SUMMARY_OUTPUT_DIR: /home/runner/work/_temp
2026-01-19T16:17:29.2239122Z   JFROG_CLI_USAGE_GH_TOKEN_FOR_CODE_SCANNING_ALERTS_PROVIDED: 
2026-01-19T16:17:29.2239471Z   SETUP_JFROG_CLI_SERVER_IDS: setup-jfrog-cli-server
2026-01-19T16:17:29.2239738Z ##[endgroup]
2026-01-19T16:17:29.2482580Z 16:17:29 [Info] maven build config successfully created.
2026-01-19T16:17:29.2519961Z ##[group]Run jf mvn clean install -B -e --project "demo-1"
2026-01-19T16:17:29.2520334Z [36;1mjf mvn clean install -B -e --project "demo-1"[0m
2026-01-19T16:17:29.2538519Z shell: /usr/bin/bash -e {0}
2026-01-19T16:17:29.2538751Z env:
2026-01-19T16:17:29.2539010Z   JAVA_HOME: /opt/hostedtoolcache/Java_Adopt_jdk/21.0.9-10.0.LTS/x64
2026-01-19T16:17:29.2539438Z   JAVA_HOME_21_X64: /opt/hostedtoolcache/Java_Adopt_jdk/21.0.9-10.0.LTS/x64
2026-01-19T16:17:29.2539779Z   ArtifactName: webgoat
2026-01-19T16:17:29.2539981Z   Version: 2024.2-SNAPSHOT
2026-01-19T16:17:29.2540461Z   JFROG_CLI_ENV_EXCLUDE: *password*;*secret*;*key*;*token*;*auth*;JF_ARTIFACTORY_*;JF_ENV_*;JF_URL;JF_USER;JF_PASSWORD;JF_ACCESS_TOKEN
2026-01-19T16:17:29.2540970Z   JFROG_CLI_OFFER_CONFIG: false
2026-01-19T16:17:29.2541410Z   JFROG_CLI_SOURCECODE_REPOSITORY: Rodi26/WebGoat
2026-01-19T16:17:29.2541705Z   JFROG_CLI_CI_JOB_ID: WebGoat_build_with_Maven
2026-01-19T16:17:29.2541977Z   JFROG_CLI_CI_RUN_ID: 21142971212
2026-01-19T16:17:29.2542250Z   JFROG_CLI_GITHUB_TOKEN: 
2026-01-19T16:17:29.2542546Z   JFROG_CLI_CI_VCS_REVISION: bc79bb60ea29f0641f3553542e9ca211a60525cd
2026-01-19T16:17:29.2542878Z   JFROG_CLI_CI_BRANCH: main
2026-01-19T16:17:29.2543160Z   JFROG_CLI_CI_VCS_URL: https://github.com/Rodi26/WebGoat
2026-01-19T16:17:29.2543473Z   JFROG_CLI_BUILD_NAME: WebGoat_build_with_Maven
2026-01-19T16:17:29.2543747Z   JFROG_CLI_BUILD_NUMBER: 361
2026-01-19T16:17:29.2544092Z   JFROG_CLI_BUILD_URL: https://github.com/Rodi26/WebGoat/actions/runs/21142971212
2026-01-19T16:17:29.2544526Z   JFROG_CLI_USER_AGENT: setup-jfrog-cli-github-action/4.8.1
2026-01-19T16:17:29.2544885Z   JFROG_CLI_COMMAND_SUMMARY_OUTPUT_DIR: /home/runner/work/_temp
2026-01-19T16:17:29.2545250Z   JFROG_CLI_USAGE_GH_TOKEN_FOR_CODE_SCANNING_ALERTS_PROVIDED: 
2026-01-19T16:17:29.2545592Z   SETUP_JFROG_CLI_SERVER_IDS: setup-jfrog-cli-server
2026-01-19T16:17:29.2545854Z ##[endgroup]
2026-01-19T16:17:29.2771909Z 16:17:29 [Info] The build-info-extractor jar is not cached locally. Downloading it now...
2026-01-19T16:17:29.2772812Z You can set the repository from which this jar is downloaded.
2026-01-19T16:17:29.2774659Z Read more about it at https://docs.jfrog-applications.jfrog.io/jfrog-applications/jfrog-cli/binaries-management-with-jfrog-artifactory/package-managers-integration#downloading-the-maven-and-gradle-extractor-jars
2026-01-19T16:17:29.2777654Z 16:17:29 [Info] Downloading JFrog's Dependency from https://releases.jfrog.io/artifactory/oss-release-local/org/jfrog/buildinfo/build-info-extractor-maven3/2.43.4/build-info-extractor-maven3-2.43.4-uber.jar
2026-01-19T16:17:30.5785715Z 16:17:30 [Info] Running Mvn...
2026-01-19T16:17:30.5789114Z 16:17:30 [Info] Running mvn command: /opt/hostedtoolcache/Java_Adopt_jdk/21.0.9-10.0.LTS/x64/bin/java -classpath /opt/apache-maven-3.9.11/boot/plexus-classworlds-2.9.0.jar -Dmaven.home=/opt/apache-maven-3.9.11 -DbuildInfoConfig.propertiesFile=/tmp/jfrog/properties/extractorProperties166548546 -Dm3plugin.lib=/home/runner/.jfrog/dependencies/maven/2.43.4 -Dclassworlds.conf=/home/runner/.jfrog/dependencies/maven/2.43.4/classworlds.conf -Dmaven.multiModuleProjectDirectory=/home/runner/work/WebGoat/WebGoat -DbuildInfoConfig.artifactoryResolutionEnabled=true org.codehaus.plexus.classworlds.launcher.Launcher clean install -B -e
2026-01-19T16:17:31.5673199Z [main] INFO org.apache.maven.cli.MavenCli - Error stacktraces are turned on.
2026-01-19T16:17:31.5983441Z [main] INFO org.apache.maven.cli.event.ExecutionEventLogger - Scanning for projects...
2026-01-19T16:17:31.6654777Z [main] INFO org.eclipse.aether.internal.impl.DefaultArtifactResolver - Artifact org.springframework.boot:spring-boot-dependencies:pom:3.4.2 is present in the local repository, but cached from a remote repository ID that is unavailable in current build context, verifying that is downloadable from [artifactory-snapshot (***/artifactory/soleng-maven-dev-virtual, default, snapshots), artifactory-release (***/artifactory/soleng-maven-dev-virtual, default, releases)]
2026-01-19T16:17:31.6682717Z [main] INFO org.eclipse.aether.internal.impl.DefaultArtifactResolver - Artifact org.springframework.boot:spring-boot-dependencies:pom:3.4.2 is present in the local repository, but cached from a remote repository ID that is unavailable in current build context, verifying that is downloadable from [artifactory-snapshot (***/artifactory/soleng-maven-dev-virtual, default, snapshots), artifactory-release (***/artifactory/soleng-maven-dev-virtual, default, releases)]
2026-01-19T16:17:31.8437712Z [main] INFO org.apache.maven.cli.transfer.Slf4jMavenTransferListener - Downloading from artifactory-release: ***/artifactory/soleng-maven-dev-virtual/org/springframework/boot/spring-boot-dependencies/3.4.2/spring-boot-dependencies-3.4.2.pom
2026-01-19T16:17:32.8116501Z [main] INFO org.apache.maven.cli.transfer.Slf4jMavenTransferListener - Downloaded from artifactory-release: ***/artifactory/soleng-maven-dev-virtual/org/springframework/boot/spring-boot-dependencies/3.4.2/spring-boot-dependencies-3.4.2.pom (0 B at 0 B/s)
2026-01-19T16:17:32.8602974Z [main] INFO org.eclipse.aether.internal.impl.DefaultArtifactResolver - Artifact org.apache.activemq:activemq-bom:pom:6.1.5 is present in the local repository, but cached from a remote repository ID that is unavailable in current build context, verifying that is downloadable from [artifactory-snapshot (***/artifactory/soleng-maven-dev-virtual, default, snapshots), artifactory-release (***/artifactory/soleng-maven-dev-virtual, default, releases)]
2026-01-19T16:17:32.8614053Z [main] INFO org.eclipse.aether.internal.impl.DefaultArtifactResolver - Artifact org.apache.activemq:activemq-bom:pom:6.1.5 is present in the local repository, but cached from a remote repository ID that is unavailable in current build context, verifying that is downloadable from [artifactory-snapshot (***/artifactory/soleng-maven-dev-virtual, default, snapshots), artifactory-release (***/artifactory/soleng-maven-dev-virtual, default, releases)]
2026-01-19T16:17:32.8640854Z [main] INFO org.apache.maven.cli.transfer.Slf4jMavenTransferListener - Downloading from artifactory-release: ***/artifactory/soleng-maven-dev-virtual/org/apache/activemq/activemq-bom/6.1.5/activemq-bom-6.1.5.pom
2026-01-19T16:17:33.0254069Z [main] INFO org.apache.maven.cli.transfer.Slf4jMavenTransferListener - Downloaded from artifactory-release: ***/artifactory/soleng-maven-dev-virtual/org/apache/activemq/activemq-bom/6.1.5/activemq-bom-6.1.5.pom (0 B at 0 B/s)
2026-01-19T16:17:33.0300362Z [main] INFO org.eclipse.aether.internal.impl.DefaultArtifactResolver - Artifact org.apache.activemq:artemis-bom:pom:2.37.0 is present in the local repository, but cached from a remote repository ID that is unavailable in current build context, verifying that is downloadable from [artifactory-snapshot (***/artifactory/soleng-maven-dev-virtual, default, snapshots), artifactory-release (***/artifactory/soleng-maven-dev-virtual, default, releases)]
2026-01-19T16:17:33.0308222Z [main] INFO org.eclipse.aether.internal.impl.DefaultArtifactResolver - Artifact org.apache.activemq:artemis-bom:pom:2.37.0 is present in the local repository, but cached from a remote repository ID that is unavailable in current build context, verifying that is downloadable from [artifactory-snapshot (***/artifactory/soleng-maven-dev-virtual, default, snapshots), artifactory-release (***/artifactory/soleng-maven-dev-virtual, default, releases)]
2026-01-19T16:17:33.0315801Z [main] INFO org.apache.maven.cli.transfer.Slf4jMavenTransferListener - Downloading from artifactory-release: ***/artifactory/soleng-maven-dev-virtual/org/apache/activemq/artemis-bom/2.37.0/artemis-bom-2.37.0.pom
2026-01-19T16:17:33.1953866Z [main] INFO org.apache.maven.cli.transfer.Slf4jMavenTransferListener - Downloaded from artifactory-release: ***/artifactory/soleng-maven-dev-virtual/org/apache/activemq/artemis-bom/2.37.0/artemis-bom-2.37.0.pom (0 B at 0 B/s)
2026-01-19T16:17:33.1990125Z [main] INFO org.eclipse.aether.internal.impl.DefaultArtifactResolver - Artifact org.apache.activemq:artemis-project:pom:2.37.0 is present in the local repository, but cached from a remote repository ID that is unavailable in current build context, verifying that is downloadable from [artifactory-snapshot (***/artifactory/soleng-maven-dev-virtual, default, snapshots), artifactory-release (***/artifactory/soleng-maven-dev-virtual, default, releases)]
2026-01-19T16:17:33.1998951Z [main] INFO org.eclipse.aether.internal.impl.DefaultArtifactResolver - Artifact org.apache.activemq:artemis-project:pom:2.37.0 is present in the local repository, but cached from a remote repository ID that is unavailable in current build context, verifying that is downloadable from [artifactory-snapshot (***/artifactory/soleng-maven-dev-virtual, default, snapshots), artifactory-release (***/artifactory/soleng-maven-dev-virtual, default, releases)]
2026-01-19T16:17:33.2004523Z [main] INFO org.apache.maven.cli.transfer.Slf4jMavenTransferListener - Downloading from artifactory-release: ***/artifactory/soleng-maven-dev-virtual/org/apache/activemq/artemis-project/2.37.0/artemis-project-2.37.0.pom
2026-01-19T16:17:33.3614273Z [main] INFO org.apache.maven.cli.transfer.Slf4jMavenTransferListener - Downloaded from artifactory-release: ***/artifactory/soleng-maven-dev-virtual/org/apache/activemq/artemis-project/2.37.0/artemis-project-2.37.0.pom (0 B at 0 B/s)
2026-01-19T16:17:33.3701835Z [main] INFO org.eclipse.aether.internal.impl.DefaultArtifactResolver - Artifact org.apache:apache:pom:33 is present in the local repository, but cached from a remote repository ID that is unavailable in current build context, verifying that is downloadable from [artifactory-snapshot (***/artifactory/soleng-maven-dev-virtual, default, snapshots), artifactory-release (***/artifactory/soleng-maven-dev-virtual, default, releases)]
2026-01-19T16:17:33.3707615Z [main] INFO org.eclipse.aether.internal.impl.DefaultArtifactResolver - Artifact org.apache:apache:pom:33 is present in the local repository, but cached from a remote repository ID that is unavailable in current build context, verifying that is downloadable from [artifactory-snapshot (***/artifactory/soleng-maven-dev-virtual, default, snapshots), artifactory-release (***/artifactory/soleng-maven-dev-virtual, default, releases)]
2026-01-19T16:17:33.3720804Z [main] INFO org.apache.maven.cli.transfer.Slf4jMavenTransferListener - Downloading from artifactory-release: ***/artifactory/soleng-maven-dev-virtual/org/apache/apache/33/apache-33.pom
2026-01-19T16:17:33.5312440Z [main] INFO org.apache.maven.cli.transfer.Slf4jMavenTransferListener - Downloaded from artifactory-release: ***/artifactory/soleng-maven-dev-virtual/org/apache/apache/33/apache-33.pom (0 B at 0 B/s)
2026-01-19T16:17:33.5386401Z [main] INFO org.eclipse.aether.internal.impl.DefaultArtifactResolver - Artifact org.assertj:assertj-bom:pom:3.26.3 is present in the local repository, but cached from a remote repository ID that is unavailable in current build context, verifying that is downloadable from [artifactory-snapshot (***/artifactory/soleng-maven-dev-virtual, default, snapshots), artifactory-release (***/artifactory/soleng-maven-dev-virtual, default, releases)]
2026-01-19T16:17:33.5394327Z [main] INFO org.eclipse.aether.internal.impl.DefaultArtifactResolver - Artifact org.assertj:assertj-bom:pom:3.26.3 is present in the local repository, but cached from a remote repository ID that is unavailable in current build context, verifying that is downloadable from [artifactory-snapshot (***/artifactory/soleng-maven-dev-virtual, default, snapshots), artifactory-release (***/artifactory/soleng-maven-dev-virtual, default, releases)]
2026-01-19T16:17:33.5401130Z [main] INFO org.apache.maven.cli.transfer.Slf4jMavenTransferListener - Downloading from artifactory-release: ***/artifactory/soleng-maven-dev-virtual/org/assertj/assertj-bom/3.26.3/assertj-bom-3.26.3.pom
2026-01-19T16:17:33.6996004Z [main] INFO org.apache.maven.cli.transfer.Slf4jMavenTransferListener - Downloaded from artifactory-release: ***/artifactory/soleng-maven-dev-virtual/org/assertj/assertj-bom/3.26.3/assertj-bom-3.26.3.pom (0 B at 0 B/s)
2026-01-19T16:17:33.7035032Z [main] INFO org.eclipse.aether.internal.impl.DefaultArtifactResolver - Artifact io.zipkin.reporter2:zipkin-reporter-bom:pom:3.4.3 is present in the local repository, but cached from a remote repository ID that is unavailable in current build context, verifying that is downloadable from [artifactory-snapshot (***/artifactory/soleng-maven-dev-virtual, default, snapshots), artifactory-release (***/artifactory/soleng-maven-dev-virtual, default, releases)]
2026-01-19T16:17:33.7041010Z [main] INFO org.eclipse.aether.internal.impl.DefaultArtifactResolver - Artifact io.zipkin.reporter2:zipkin-reporter-bom:pom:3.4.3 is present in the local repository, but cached from a remote repository ID that is unavailable in current build context, verifying that is downloadable from [artifactory-snapshot (***/artifactory/soleng-maven-dev-virtual, default, snapshots), artifactory-release (***/artifactory/soleng-maven-dev-virtual, default, releases)]
2026-01-19T16:17:33.7046550Z [main] INFO org.apache.maven.cli.transfer.Slf4jMavenTransferListener - Downloading from artifactory-release: ***/artifactory/soleng-maven-dev-virtual/io/zipkin/reporter2/zipkin-reporter-bom/3.4.3/zipkin-reporter-bom-3.4.3.pom
2026-01-19T16:17:33.8748031Z [main] INFO org.apache.maven.cli.transfer.Slf4jMavenTransferListener - Downloaded from artifactory-release: ***/artifactory/soleng-maven-dev-virtual/io/zipkin/reporter2/zipkin-reporter-bom/3.4.3/zipkin-reporter-bom-3.4.3.pom (0 B at 0 B/s)
2026-01-19T16:17:33.8786977Z [main] INFO org.eclipse.aether.internal.impl.DefaultArtifactResolver - Artifact io.zipkin.brave:brave-bom:pom:6.0.3 is present in the local repository, but cached from a remote repository ID that is unavailable in current build context, verifying that is downloadable from [artifactory-snapshot (***/artifactory/soleng-maven-dev-virtual, default, snapshots), artifactory-release (***/artifactory/soleng-maven-dev-virtual, default, releases)]
2026-01-19T16:17:33.8794317Z [main] INFO org.eclipse.aether.internal.impl.DefaultArtifactResolver - Artifact io.zipkin.brave:brave-bom:pom:6.0.3 is present in the local repository, but cached from a remote repository ID that is unavailable in current build context, verifying that is downloadable from [artifactory-snapshot (***/artifactory/soleng-maven-dev-virtual, default, snapshots), artifactory-release (***/artifactory/soleng-maven-dev-virtual, default, releases)]
2026-01-19T16:17:33.8802490Z [main] INFO org.apache.maven.cli.transfer.Slf4jMavenTransferListener - Downloading from artifactory-release: ***/artifactory/soleng-maven-dev-virtual/io/zipkin/brave/brave-bom/6.0.3/brave-bom-6.0.3.pom
2026-01-19T16:17:34.0564974Z [main] INFO org.apache.maven.cli.transfer.Slf4jMavenTransferListener - Downloaded from artifactory-release: ***/artifactory/soleng-maven-dev-virtual/io/zipkin/brave/brave-bom/6.0.3/brave-bom-6.0.3.pom (0 B at 0 B/s)
2026-01-19T16:17:34.0613934Z [main] INFO org.eclipse.aether.internal.impl.DefaultArtifactResolver - Artifact org.apache.cassandra:java-driver-bom:pom:4.18.1 is present in the local repository, but cached from a remote repository ID that is unavailable in current build context, verifying that is downloadable from [artifactory-snapshot (***/artifactory/soleng-maven-dev-virtual, default, snapshots), artifactory-release (***/artifactory/soleng-maven-dev-virtual, default, releases)]
2026-01-19T16:17:34.0624688Z [main] INFO org.eclipse.aether.internal.impl.DefaultArtifactResolver - Artifact org.apache.cassandra:java-driver-bom:pom:4.18.1 is present in the local repository, but cached from a remote repository ID that is unavailable in current build context, verifying that is downloadable from [artifactory-snapshot (***/artifactory/soleng-maven-dev-virtual, default, snapshots), artifactory-release (***/artifactory/soleng-maven-dev-virtual, default, releases)]
2026-01-19T16:17:34.0637702Z [main] INFO org.apache.maven.cli.transfer.Slf4jMavenTransferListener - Downloading from artifactory-release: ***/artifactory/soleng-maven-dev-virtual/org/apache/cassandra/java-driver-bom/4.18.1/java-driver-bom-4.18.1.pom
2026-01-19T16:17:34.2249347Z [main] INFO org.apache.maven.cli.transfer.Slf4jMavenTransferListener - Downloaded from artifactory-release: ***/artifactory/soleng-maven-dev-virtual/org/apache/cassandra/java-driver-bom/4.18.1/java-driver-bom-4.18.1.pom (0 B at 0 B/s)
2026-01-19T16:17:34.2285959Z [main] INFO org.eclipse.aether.internal.impl.DefaultArtifactResolver - Artifact org.glassfish.jaxb:jaxb-bom:pom:4.0.5 is present in the local repository, but cached from a remote repository ID that is unavailable in current build context, verifying that is downloadable from [artifactory-snapshot (***/artifactory/soleng-maven-dev-virtual, default, snapshots), artifactory-release (***/artifactory/soleng-maven-dev-virtual, default, releases)]
2026-01-19T16:17:34.2293605Z [main] INFO org.eclipse.aether.internal.impl.DefaultArtifactResolver - Artifact org.glassfish.jaxb:jaxb-bom:pom:4.0.5 is present in the local repository, but cached from a remote repository ID that is unavailable in current build context, verifying that is downloadable from [artifactory-snapshot (***/artifactory/soleng-maven-dev-virtual, default, snapshots), artifactory-release (***/artifactory/soleng-maven-dev-virtual, default, releases)]
2026-01-19T16:17:34.2300502Z [main] INFO org.apache.maven.cli.transfer.Slf4jMavenTransferListener - Downloading from artifactory-release: ***/artifactory/soleng-maven-dev-virtual/org/glassfish/jaxb/jaxb-bom/4.0.5/jaxb-bom-4.0.5.pom
2026-01-19T16:17:34.3881959Z [main] INFO org.apache.maven.cli.transfer.Slf4jMavenTransferListener - Downloaded from artifactory-release: ***/artifactory/soleng-maven-dev-virtual/org/glassfish/jaxb/jaxb-bom/4.0.5/jaxb-bom-4.0.5.pom (0 B at 0 B/s)
2026-01-19T16:17:34.3910886Z [main] INFO org.eclipse.aether.internal.impl.DefaultArtifactResolver - Artifact org.eclipse.ee4j:project:pom:1.0.9 is present in the local repository, but cached from a remote repository ID that is unavailable in current build context, verifying that is downloadable from [artifactory-snapshot (***/artifactory/soleng-maven-dev-virtual, default, snapshots), artifactory-release (***/artifactory/soleng-maven-dev-virtual, default, releases)]
2026-01-19T16:17:34.3916552Z [main] INFO org.eclipse.aether.internal.impl.DefaultArtifactResolver - Artifact org.eclipse.ee4j:project:pom:1.0.9 is present in the local repository, but cached from a remote repository ID that is unavailable in current build context, verifying that is downloadable from [artifactory-snapshot (***/artifactory/soleng-maven-dev-virtual, default, snapshots), artifactory-release (***/artifactory/soleng-maven-dev-virtual, default, releases)]
2026-01-19T16:17:34.3929329Z [main] INFO org.apache.maven.cli.transfer.Slf4jMavenTransferListener - Downloading from artifactory-release: ***/artifactory/soleng-maven-dev-virtual/org/eclipse/ee4j/project/1.0.9/project-1.0.9.pom
2026-01-19T16:17:34.5534696Z [main] INFO org.apache.maven.cli.transfer.Slf4jMavenTransferListener - Downloaded from artifactory-release: ***/artifactory/soleng-maven-dev-virtual/org/eclipse/ee4j/project/1.0.9/project-1.0.9.pom (0 B at 0 B/s)
2026-01-19T16:17:34.5588662Z [main] INFO org.eclipse.aether.internal.impl.DefaultArtifactResolver - Artifact org.apache.groovy:groovy-bom:pom:4.0.24 is present in the local repository, but cached from a remote repository ID that is unavailable in current build context, verifying that is downloadable from [artifactory-snapshot (***/artifactory/soleng-maven-dev-virtual, default, snapshots), artifactory-release (***/artifactory/soleng-maven-dev-virtual, default, releases)]
2026-01-19T16:17:34.5594034Z [main] INFO org.eclipse.aether.internal.impl.DefaultArtifactResolver - Artifact org.apache.groovy:groovy-bom:pom:4.0.24 is present in the local repository, but cached from a remote repository ID that is unavailable in current build context, verifying that is downloadable from [artifactory-snapshot (***/artifactory/soleng-maven-dev-virtual, default, snapshots), artifactory-release (***/artifactory/soleng-maven-dev-virtual, default, releases)]
2026-01-19T16:17:34.5600153Z [main] INFO org.apache.maven.cli.transfer.Slf4jMavenTransferListener - Downloading from artifactory-release: ***/artifactory/soleng-maven-dev-virtual/org/apache/groovy/groovy-bom/4.0.24/groovy-bom-4.0.24.pom
2026-01-19T16:17:34.7206081Z [main] INFO org.apache.maven.cli.transfer.Slf4jMavenTransferListener - Downloaded from artifactory-release: ***/artifactory/soleng-maven-dev-virtual/org/apache/groovy/groovy-bom/4.0.24/groovy-bom-4.0.24.pom (0 B at 0 B/s)
2026-01-19T16:17:34.7275481Z [main] INFO org.eclipse.aether.internal.impl.DefaultArtifactResolver - Artifact org.infinispan:infinispan-bom:pom:15.0.12.Final is present in the local repository, but cached from a remote repository ID that is unavailable in current build context, verifying that is downloadable from [artifactory-snapshot (***/artifactory/soleng-maven-dev-virtual, default, snapshots), artifactory-release (***/artifactory/soleng-maven-dev-virtual, default, releases)]
2026-01-19T16:17:34.7297129Z [main] INFO org.eclipse.aether.internal.impl.DefaultArtifactResolver - Artifact org.infinispan:infinispan-bom:pom:15.0.12.Final is present in the local repository, but cached from a remote repository ID that is unavailable in current build context, verifying that is downloadable from [artifactory-snapshot (***/artifactory/soleng-maven-dev-virtual, default, snapshots), artifactory-release (***/artifactory/soleng-maven-dev-virtual, default, releases)]
2026-01-19T16:17:34.7302628Z [main] INFO org.apache.maven.cli.transfer.Slf4jMavenTransferListener - Downloading from artifactory-release: ***/artifactory/soleng-maven-dev-virtual/org/infinispan/infinispan-bom/15.0.12.Final/infinispan-bom-15.0.12.Final.pom
2026-01-19T16:17:34.8883918Z [main] INFO org.apache.maven.cli.transfer.Slf4jMavenTransferListener - Downloaded from artifactory-release: ***/artifactory/soleng-maven-dev-virtual/org/infinispan/infinispan-bom/15.0.12.Final/infinispan-bom-15.0.12.Final.pom (0 B at 0 B/s)
2026-01-19T16:17:34.8930023Z [main] INFO org.eclipse.aether.internal.impl.DefaultArtifactResolver - Artifact org.infinispan:infinispan-build-configuration-parent:pom:15.0.12.Final is present in the local repository, but cached from a remote repository ID that is unavailable in current build context, verifying that is downloadable from [artifactory-snapshot (***/artifactory/soleng-maven-dev-virtual, default, snapshots), artifactory-release (***/artifactory/soleng-maven-dev-virtual, default, releases)]
2026-01-19T16:19:38.0211926Z [main] INFO org.eclipse.aether.internal.impl.DefaultArtifactResolver - Artifact org.apache.maven.shared:maven-shared-utils:jar:3.4.2 is present in the local repository, but cached from a remote repository ID that is unavailable in current build context, verifying that is downloadable from [artifactory-snapshot (***/artifactory/soleng-maven-dev-virtual, default, snapshots), artifactory-release (***/artifactory/soleng-maven-dev-virtual, default, releases)]
2026-01-19T16:19:38.0227103Z [main] INFO org.eclipse.aether.internal.impl.DefaultArtifactResolver - Artifact org.apache.maven.shared:maven-shared-utils:jar:3.4.2 is present in the local repository, but cached from a remote repository ID that is unavailable in current build context, verifying that is downloadable from [artifactory-snapshot (***/artifactory/soleng-maven-dev-virtual, default, snapshots), artifactory-release (***/artifactory/soleng-maven-dev-virtual, default, releases)]
2026-01-19T16:19:38.0233609Z [main] INFO org.apache.maven.cli.transfer.Slf4jMavenTransferListener - Downloading from artifactory-release: ***/artifactory/soleng-maven-dev-virtual/org/apache/maven/shared/maven-shared-utils/3.4.2/maven-shared-utils-3.4.2.jar
2026-01-19T16:19:38.1804266Z [main] INFO org.apache.maven.cli.transfer.Slf4jMavenTransferListener - Downloaded from artifactory-release: ***/artifactory/soleng-maven-dev-virtual/org/apache/maven/shared/maven-shared-utils/3.4.2/maven-shared-utils-3.4.2.jar (0 B at 0 B/s)
2026-01-19T16:19:38.1809162Z [BasicRepositoryConnector-rodolphefplus.jfrog.io-3-0] INFO org.apache.maven.cli.transfer.Slf4jMavenTransferListener - Downloading from artifactory-release: ***/artifactory/soleng-maven-dev-virtual/org/apache/maven/shared/maven-shared-incremental/1.1/maven-shared-incremental-1.1.jar
2026-01-19T16:19:38.1814579Z [BasicRepositoryConnector-rodolphefplus.jfrog.io-3-1] INFO org.apache.maven.cli.transfer.Slf4jMavenTransferListener - Downloading from artifactory-release: ***/artifactory/soleng-maven-dev-virtual/org/codehaus/plexus/plexus-java/1.2.0/plexus-java-1.2.0.jar
2026-01-19T16:19:38.1818327Z [BasicRepositoryConnector-rodolphefplus.jfrog.io-3-2] INFO org.apache.maven.cli.transfer.Slf4jMavenTransferListener - Downloading from artifactory-release: ***/artifactory/soleng-maven-dev-virtual/org/ow2/asm/asm/9.6/asm-9.6.jar
2026-01-19T16:19:38.1820433Z [BasicRepositoryConnector-rodolphefplus.jfrog.io-3-3] INFO org.apache.maven.cli.transfer.Slf4jMavenTransferListener - Downloading from artifactory-release: ***/artifactory/soleng-maven-dev-virtual/com/thoughtworks/qdox/qdox/2.0.3/qdox-2.0.3.jar
2026-01-19T16:19:38.1823722Z [BasicRepositoryConnector-rodolphefplus.jfrog.io-3-4] INFO org.apache.maven.cli.transfer.Slf4jMavenTransferListener - Downloading from artifactory-release: ***/artifactory/soleng-maven-dev-virtual/org/codehaus/plexus/plexus-compiler-api/2.15.0/plexus-compiler-api-2.15.0.jar
2026-01-19T16:19:38.4857511Z [BasicRepositoryConnector-rodolphefplus.jfrog.io-3-0] INFO org.apache.maven.cli.transfer.Slf4jMavenTransferListener - Downloaded from artifactory-release: ***/artifactory/soleng-maven-dev-virtual/org/apache/maven/shared/maven-shared-incremental/1.1/maven-shared-incremental-1.1.jar (14 kB at 44 kB/s)
2026-01-19T16:19:38.4860443Z [BasicRepositoryConnector-rodolphefplus.jfrog.io-3-0] INFO org.apache.maven.cli.transfer.Slf4jMavenTransferListener - Downloading from artifactory-release: ***/artifactory/soleng-maven-dev-virtual/org/codehaus/plexus/plexus-compiler-manager/2.15.0/plexus-compiler-manager-2.15.0.jar
2026-01-19T16:19:38.4948091Z [BasicRepositoryConnector-rodolphefplus.jfrog.io-3-4] INFO org.apache.maven.cli.transfer.Slf4jMavenTransferListener - Downloaded from artifactory-release: ***/artifactory/soleng-maven-dev-virtual/org/codehaus/plexus/plexus-compiler-api/2.15.0/plexus-compiler-api-2.15.0.jar (29 kB at 93 kB/s)
2026-01-19T16:19:38.4950534Z [BasicRepositoryConnector-rodolphefplus.jfrog.io-3-4] INFO org.apache.maven.cli.transfer.Slf4jMavenTransferListener - Downloading from artifactory-release: ***/artifactory/soleng-maven-dev-virtual/org/codehaus/plexus/plexus-xml/3.0.0/plexus-xml-3.0.0.jar
2026-01-19T16:19:38.6314198Z [BasicRepositoryConnector-rodolphefplus.jfrog.io-3-1] INFO org.apache.maven.cli.transfer.Slf4jMavenTransferListener - Downloaded from artifactory-release: ***/artifactory/soleng-maven-dev-virtual/org/codehaus/plexus/plexus-java/1.2.0/plexus-java-1.2.0.jar (58 kB at 128 kB/s)
2026-01-19T16:19:38.6316776Z [BasicRepositoryConnector-rodolphefplus.jfrog.io-3-1] INFO org.apache.maven.cli.transfer.Slf4jMavenTransferListener - Downloading from artifactory-release: ***/artifactory/soleng-maven-dev-virtual/org/codehaus/plexus/plexus-compiler-javac/2.15.0/plexus-compiler-javac-2.15.0.jar
2026-01-19T16:19:38.6475889Z [BasicRepositoryConnector-rodolphefplus.jfrog.io-3-0] INFO org.apache.maven.cli.transfer.Slf4jMavenTransferListener - Downloaded from artifactory-release: ***/artifactory/soleng-maven-dev-virtual/org/codehaus/plexus/plexus-compiler-manager/2.15.0/plexus-compiler-manager-2.15.0.jar (5.2 kB at 11 kB/s)
2026-01-19T16:19:38.6479030Z [BasicRepositoryConnector-rodolphefplus.jfrog.io-3-0] INFO org.apache.maven.cli.transfer.Slf4jMavenTransferListener - Downloading from artifactory-release: ***/artifactory/soleng-maven-dev-virtual/org/codehaus/plexus/plexus-utils/4.0.0/plexus-utils-4.0.0.jar
2026-01-19T16:19:38.7717777Z [BasicRepositoryConnector-rodolphefplus.jfrog.io-3-2] INFO org.apache.maven.cli.transfer.Slf4jMavenTransferListener - Downloaded from artifactory-release: ***/artifactory/soleng-maven-dev-virtual/org/ow2/asm/asm/9.6/asm-9.6.jar (124 kB at 209 kB/s)
2026-01-19T16:19:38.7916667Z [BasicRepositoryConnector-rodolphefplus.jfrog.io-3-4] INFO org.apache.maven.cli.transfer.Slf4jMavenTransferListener - Downloaded from artifactory-release: ***/artifactory/soleng-maven-dev-virtual/org/codehaus/plexus/plexus-xml/3.0.0/plexus-xml-3.0.0.jar (93 kB at 152 kB/s)
2026-01-19T16:19:38.7999333Z [BasicRepositoryConnector-rodolphefplus.jfrog.io-3-1] INFO org.apache.maven.cli.transfer.Slf4jMavenTransferListener - Downloaded from artifactory-release: ***/artifactory/soleng-maven-dev-virtual/org/codehaus/plexus/plexus-compiler-javac/2.15.0/plexus-compiler-javac-2.15.0.jar (26 kB at 42 kB/s)
2026-01-19T16:19:39.0884249Z [BasicRepositoryConnector-rodolphefplus.jfrog.io-3-0] INFO org.apache.maven.cli.transfer.Slf4jMavenTransferListener - Downloaded from artifactory-release: ***/artifactory/soleng-maven-dev-virtual/org/codehaus/plexus/plexus-utils/4.0.0/plexus-utils-4.0.0.jar (192 kB at 212 kB/s)
2026-01-19T16:19:39.6604497Z [BasicRepositoryConnector-rodolphefplus.jfrog.io-3-3] INFO org.apache.maven.cli.transfer.Slf4jMavenTransferListener - Downloaded from artifactory-release: ***/artifactory/soleng-maven-dev-virtual/com/thoughtworks/qdox/qdox/2.0.3/qdox-2.0.3.jar (334 kB at 226 kB/s)
2026-01-19T16:19:39.7225819Z [main] INFO org.apache.maven.plugin.compiler.CompilerMojo - Recompiling the module because of changed source code.
2026-01-19T16:19:39.7385685Z [main] INFO org.codehaus.plexus.compiler.javac.JavacCompiler - Compiling 261 source files with javac [debug parameters release 21] to target/classes
2026-01-19T16:19:42.7665924Z [main] INFO org.apache.maven.plugin.compiler.CompilerMojo - Annotation processing is enabled because one or more processors were found
2026-01-19T16:19:42.7667236Z   on the class path. A future release of javac may disable annotation processing
2026-01-19T16:19:42.7668127Z   unless at least one processor is specified by name (-processor), or a search
2026-01-19T16:19:42.7669005Z   path is specified (--processor-path, --processor-module-path), or annotation
2026-01-19T16:19:42.7669830Z   processing is enabled explicitly (-proc:only, -proc:full).
2026-01-19T16:19:42.7670469Z   Use -Xlint:-options to suppress this message.
2026-01-19T16:19:42.7711342Z   Use -proc:none to disable annotation processing.
2026-01-19T16:19:42.7712471Z [main] INFO org.apache.maven.plugin.compiler.CompilerMojo - -------------------------------------------------------------
2026-01-19T16:19:42.7715446Z [main] WARNING org.apache.maven.plugin.compiler.CompilerMojo - COMPILATION WARNING : 
2026-01-19T16:19:42.7716682Z [main] INFO org.apache.maven.plugin.compiler.CompilerMojo - -------------------------------------------------------------
2026-01-19T16:19:42.7719727Z [main] WARNING org.apache.maven.plugin.compiler.CompilerMojo - /home/runner/work/WebGoat/WebGoat/src/main/java/org/owasp/webgoat/webwolf/jwt/JWTToken.java:[31,18] @Builder will ignore the initializing expression entirely. If you want the initializing expression to serve as default, add @Builder.Default. If it is not supposed to be settable during building, make the field final.
2026-01-19T16:19:42.7724558Z [main] WARNING org.apache.maven.plugin.compiler.CompilerMojo - /home/runner/work/WebGoat/WebGoat/src/main/java/org/owasp/webgoat/webwolf/jwt/JWTToken.java:[38,19] @Builder will ignore the initializing expression entirely. If you want the initializing expression to serve as default, add @Builder.Default. If it is not supposed to be settable during building, make the field final.
2026-01-19T16:19:42.7729339Z [main] WARNING org.apache.maven.plugin.compiler.CompilerMojo - /home/runner/work/WebGoat/WebGoat/src/main/java/org/owasp/webgoat/webwolf/mailbox/Email.java:[54,37] @Builder will ignore the initializing expression entirely. If you want the initializing expression to serve as default, add @Builder.Default. If it is not supposed to be settable during building, make the field final.
2026-01-19T16:19:42.7732328Z [main] INFO org.apache.maven.plugin.compiler.CompilerMojo - 3 warnings 
2026-01-19T16:19:42.7733537Z [main] INFO org.apache.maven.plugin.compiler.CompilerMojo - -------------------------------------------------------------
2026-01-19T16:19:42.7735013Z [main] INFO org.apache.maven.plugin.compiler.CompilerMojo - -------------------------------------------------------------
2026-01-19T16:19:42.7736271Z [main] ERROR org.apache.maven.plugin.compiler.CompilerMojo - COMPILATION ERROR : 
2026-01-19T16:19:42.7737536Z [main] INFO org.apache.maven.plugin.compiler.CompilerMojo - -------------------------------------------------------------
2026-01-19T16:19:42.7739714Z [main] ERROR org.apache.maven.plugin.compiler.CompilerMojo - /home/runner/work/WebGoat/WebGoat/src/main/java/org/owasp/webgoat/lessons/cryptography/CryptoUtil.java:[19,22] package javax.xml.bind does not exist
2026-01-19T16:19:42.7742525Z [main] ERROR org.apache.maven.plugin.compiler.CompilerMojo - /home/runner/work/WebGoat/WebGoat/src/main/java/org/owasp/webgoat/lessons/cryptography/HashingAssignment.java:[32,22] package javax.xml.bind does not exist
2026-01-19T16:19:42.7745650Z [main] ERROR org.apache.maven.plugin.compiler.CompilerMojo - /home/runner/work/WebGoat/WebGoat/src/main/java/org/owasp/webgoat/lessons/cryptography/SigningAssignment.java:[33,22] package javax.xml.bind does not exist
2026-01-19T16:19:42.7748046Z [main] ERROR org.apache.maven.plugin.compiler.CompilerMojo - /home/runner/work/WebGoat/WebGoat/src/main/java/org/owasp/webgoat/lessons/csrf/Review.java:[25,33] package javax.xml.bind.annotation does not exist
2026-01-19T16:19:42.7750359Z [main] ERROR org.apache.maven.plugin.compiler.CompilerMojo - /home/runner/work/WebGoat/WebGoat/src/main/java/org/owasp/webgoat/lessons/csrf/Review.java:[39,2] cannot find symbol
2026-01-19T16:19:42.7751766Z   symbol: class XmlRootElement
2026-01-19T16:19:42.7753103Z [main] ERROR org.apache.maven.plugin.compiler.CompilerMojo - /home/runner/work/WebGoat/WebGoat/src/main/java/org/owasp/webgoat/lessons/xss/Comment.java:[3,33] package javax.xml.bind.annotation does not exist
2026-01-19T16:19:42.7755362Z [main] ERROR org.apache.maven.plugin.compiler.CompilerMojo - /home/runner/work/WebGoat/WebGoat/src/main/java/org/owasp/webgoat/lessons/xss/Comment.java:[17,2] cannot find symbol
2026-01-19T16:19:42.7756581Z   symbol: class XmlRootElement
2026-01-19T16:19:42.7757927Z [main] ERROR org.apache.maven.plugin.compiler.CompilerMojo - /home/runner/work/WebGoat/WebGoat/src/main/java/org/owasp/webgoat/lessons/xxe/User.java:[25,33] package javax.xml.bind.annotation does not exist
2026-01-19T16:19:42.7760012Z [main] ERROR org.apache.maven.plugin.compiler.CompilerMojo - /home/runner/work/WebGoat/WebGoat/src/main/java/org/owasp/webgoat/lessons/xxe/User.java:[27,2] cannot find symbol
2026-01-19T16:19:42.7761518Z   symbol: class XmlRootElement
2026-01-19T16:19:42.7762108Z [main] INFO org.apache.maven.plugin.compiler.CompilerMojo - 9 errors 
2026-01-19T16:19:42.7763185Z [main] INFO org.apache.maven.plugin.compiler.CompilerMojo - -------------------------------------------------------------
2026-01-19T16:19:42.7764638Z [main] INFO org.apache.maven.cli.event.ExecutionEventLogger - ------------------------------------------------------------------------
2026-01-19T16:19:42.7765694Z [main] INFO org.apache.maven.cli.event.ExecutionEventLogger - BUILD FAILURE
2026-01-19T16:19:42.7766787Z [main] INFO org.apache.maven.cli.event.ExecutionEventLogger - ------------------------------------------------------------------------
2026-01-19T16:19:42.7767926Z [main] INFO org.apache.maven.cli.event.ExecutionEventLogger - Total time:  02:11 min
2026-01-19T16:19:42.7768924Z [main] INFO org.apache.maven.cli.event.ExecutionEventLogger - Finished at: 2026-01-19T16:19:42Z
2026-01-19T16:19:42.7770138Z [main] INFO org.apache.maven.cli.event.ExecutionEventLogger - ------------------------------------------------------------------------
2026-01-19T16:19:42.7772141Z [main] ERROR org.apache.maven.cli.MavenCli - Failed to execute goal org.apache.maven.plugins:maven-compiler-plugin:3.13.0:compile (default-compile) on project webgoat: Compilation failure: Compilation failure: 
2026-01-19T16:19:42.7774418Z [main] ERROR org.apache.maven.cli.MavenCli - /home/runner/work/WebGoat/WebGoat/src/main/java/org/owasp/webgoat/lessons/cryptography/CryptoUtil.java:[19,22] package javax.xml.bind does not exist
2026-01-19T16:19:42.7776680Z [main] ERROR org.apache.maven.cli.MavenCli - /home/runner/work/WebGoat/WebGoat/src/main/java/org/owasp/webgoat/lessons/cryptography/HashingAssignment.java:[32,22] package javax.xml.bind does not exist
2026-01-19T16:19:42.7778983Z [main] ERROR org.apache.maven.cli.MavenCli - /home/runner/work/WebGoat/WebGoat/src/main/java/org/owasp/webgoat/lessons/cryptography/SigningAssignment.java:[33,22] package javax.xml.bind does not exist
2026-01-19T16:19:42.7781288Z [main] ERROR org.apache.maven.cli.MavenCli - /home/runner/work/WebGoat/WebGoat/src/main/java/org/owasp/webgoat/lessons/csrf/Review.java:[25,33] package javax.xml.bind.annotation does not exist
2026-01-19T16:19:42.7783261Z [main] ERROR org.apache.maven.cli.MavenCli - /home/runner/work/WebGoat/WebGoat/src/main/java/org/owasp/webgoat/lessons/csrf/Review.java:[39,2] cannot find symbol
2026-01-19T16:19:42.7784542Z [main] ERROR org.apache.maven.cli.MavenCli -   symbol: class XmlRootElement
2026-01-19T16:19:42.7786257Z [main] ERROR org.apache.maven.cli.MavenCli - /home/runner/work/WebGoat/WebGoat/src/main/java/org/owasp/webgoat/lessons/xss/Comment.java:[3,33] package javax.xml.bind.annotation does not exist
2026-01-19T16:19:42.7788329Z [main] ERROR org.apache.maven.cli.MavenCli - /home/runner/work/WebGoat/WebGoat/src/main/java/org/owasp/webgoat/lessons/xss/Comment.java:[17,2] cannot find symbol
2026-01-19T16:19:42.7789630Z [main] ERROR org.apache.maven.cli.MavenCli -   symbol: class XmlRootElement
2026-01-19T16:19:42.7790983Z [main] ERROR org.apache.maven.cli.MavenCli - /home/runner/work/WebGoat/WebGoat/src/main/java/org/owasp/webgoat/lessons/xxe/User.java:[25,33] package javax.xml.bind.annotation does not exist
2026-01-19T16:19:42.7792980Z [main] ERROR org.apache.maven.cli.MavenCli - /home/runner/work/WebGoat/WebGoat/src/main/java/org/owasp/webgoat/lessons/xxe/User.java:[27,2] cannot find symbol
2026-01-19T16:19:42.7794213Z [main] ERROR org.apache.maven.cli.MavenCli -   symbol: class XmlRootElement
2026-01-19T16:19:42.7794952Z [main] ERROR org.apache.maven.cli.MavenCli - -> [Help 1]
2026-01-19T16:19:42.7796450Z org.apache.maven.lifecycle.LifecycleExecutionException: Failed to execute goal org.apache.maven.plugins:maven-compiler-plugin:3.13.0:compile (default-compile) on project webgoat: Compilation failure
2026-01-19T16:19:42.7798201Z     at org.apache.maven.lifecycle.internal.MojoExecutor.doExecute2 (MojoExecutor.java:333)
2026-01-19T16:19:42.7799347Z     at org.apache.maven.lifecycle.internal.MojoExecutor.doExecute (MojoExecutor.java:316)
2026-01-19T16:19:42.7800425Z     at org.apache.maven.lifecycle.internal.MojoExecutor.execute (MojoExecutor.java:212)
2026-01-19T16:19:42.7801569Z     at org.apache.maven.lifecycle.internal.MojoExecutor.execute (MojoExecutor.java:174)
2026-01-19T16:19:42.7802568Z     at org.apache.maven.lifecycle.internal.MojoExecutor.access$000 (MojoExecutor.java:75)
2026-01-19T16:19:42.7803570Z     at org.apache.maven.lifecycle.internal.MojoExecutor$1.run (MojoExecutor.java:162)
2026-01-19T16:19:42.7804718Z     at org.apache.maven.plugin.DefaultMojosExecutionStrategy.execute (DefaultMojosExecutionStrategy.java:39)
2026-01-19T16:19:42.7805965Z     at org.apache.maven.lifecycle.internal.MojoExecutor.execute (MojoExecutor.java:159)
2026-01-19T16:19:42.7807227Z     at org.apache.maven.lifecycle.internal.LifecycleModuleBuilder.buildProject (LifecycleModuleBuilder.java:105)
2026-01-19T16:19:42.7808699Z     at org.apache.maven.lifecycle.internal.LifecycleModuleBuilder.buildProject (LifecycleModuleBuilder.java:73)
2026-01-19T16:19:42.7810324Z     at org.apache.maven.lifecycle.internal.builder.singlethreaded.SingleThreadedBuilder.build (SingleThreadedBuilder.java:53)
2026-01-19T16:19:42.7811949Z     at org.apache.maven.lifecycle.internal.LifecycleStarter.execute (LifecycleStarter.java:118)
2026-01-19T16:19:42.7813215Z     at org.apache.maven.DefaultMaven.doExecute (DefaultMaven.java:261)
2026-01-19T16:19:42.7814055Z     at org.apache.maven.DefaultMaven.doExecute (DefaultMaven.java:173)
2026-01-19T16:19:42.7814818Z     at org.apache.maven.DefaultMaven.execute (DefaultMaven.java:101)
2026-01-19T16:19:42.7815542Z     at org.apache.maven.cli.MavenCli.execute (MavenCli.java:906)
2026-01-19T16:19:42.7816262Z     at org.apache.maven.cli.MavenCli.doMain (MavenCli.java:283)
2026-01-19T16:19:42.7816940Z     at org.apache.maven.cli.MavenCli.main (MavenCli.java:206)
2026-01-19T16:19:42.7817905Z     at jdk.internal.reflect.DirectMethodHandleAccessor.invoke (DirectMethodHandleAccessor.java:103)
2026-01-19T16:19:42.7818869Z     at java.lang.reflect.Method.invoke (Method.java:580)
2026-01-19T16:19:42.7819737Z     at org.codehaus.plexus.classworlds.launcher.Launcher.launchEnhanced (Launcher.java:255)
2026-01-19T16:19:42.7820864Z     at org.codehaus.plexus.classworlds.launcher.Launcher.launch (Launcher.java:201)
2026-01-19T16:19:42.7822132Z     at org.codehaus.plexus.classworlds.launcher.Launcher.mainWithExitCode (Launcher.java:361)
2026-01-19T16:19:42.7823231Z     at org.codehaus.plexus.classworlds.launcher.Launcher.main (Launcher.java:314)
2026-01-19T16:19:42.7824630Z Caused by: org.apache.maven.plugin.compiler.CompilationFailureException: Compilation failure
2026-01-19T16:19:42.7825916Z     at org.apache.maven.plugin.compiler.AbstractCompilerMojo.execute (AbstractCompilerMojo.java:1309)
2026-01-19T16:19:42.7827215Z     at org.apache.maven.plugin.compiler.CompilerMojo.execute (CompilerMojo.java:215)
2026-01-19T16:19:42.7829979Z     at org.apache.maven.plugin.DefaultBuildPluginManager.executeMojo (DefaultBuildPluginManager.java:126)
2026-01-19T16:19:42.7835632Z     at org.apache.maven.lifecycle.internal.MojoExecutor.doExecute2 (MojoExecutor.java:328)
2026-01-19T16:19:42.7836862Z     at org.apache.maven.lifecycle.internal.MojoExecutor.doExecute (MojoExecutor.java:316)
2026-01-19T16:19:42.7837991Z     at org.apache.maven.lifecycle.internal.MojoExecutor.execute (MojoExecutor.java:212)
2026-01-19T16:19:42.7839061Z     at org.apache.maven.lifecycle.internal.MojoExecutor.execute (MojoExecutor.java:174)
2026-01-19T16:19:42.7840148Z     at org.apache.maven.lifecycle.internal.MojoExecutor.access$000 (MojoExecutor.java:75)
2026-01-19T16:19:42.7841359Z     at org.apache.maven.lifecycle.internal.MojoExecutor$1.run (MojoExecutor.java:162)
2026-01-19T16:19:42.7842613Z     at org.apache.maven.plugin.DefaultMojosExecutionStrategy.execute (DefaultMojosExecutionStrategy.java:39)
2026-01-19T16:19:42.7843905Z     at org.apache.maven.lifecycle.internal.MojoExecutor.execute (MojoExecutor.java:159)
2026-01-19T16:19:42.7845209Z     at org.apache.maven.lifecycle.internal.LifecycleModuleBuilder.buildProject (LifecycleModuleBuilder.java:105)
2026-01-19T16:19:42.7846756Z     at org.apache.maven.lifecycle.internal.LifecycleModuleBuilder.buildProject (LifecycleModuleBuilder.java:73)
2026-01-19T16:19:42.7848439Z     at org.apache.maven.lifecycle.internal.builder.singlethreaded.SingleThreadedBuilder.build (SingleThreadedBuilder.java:53)
2026-01-19T16:19:42.7849884Z     at org.apache.maven.lifecycle.internal.LifecycleStarter.execute (LifecycleStarter.java:118)
2026-01-19T16:19:42.7850903Z     at org.apache.maven.DefaultMaven.doExecute (DefaultMaven.java:261)
2026-01-19T16:19:42.7851847Z     at org.apache.maven.DefaultMaven.doExecute (DefaultMaven.java:173)
2026-01-19T16:19:42.7852628Z     at org.apache.maven.DefaultMaven.execute (DefaultMaven.java:101)
2026-01-19T16:19:42.7853384Z     at org.apache.maven.cli.MavenCli.execute (MavenCli.java:906)
2026-01-19T16:19:42.7854116Z     at org.apache.maven.cli.MavenCli.doMain (MavenCli.java:283)
2026-01-19T16:19:42.7854824Z     at org.apache.maven.cli.MavenCli.main (MavenCli.java:206)
2026-01-19T16:19:42.7855797Z     at jdk.internal.reflect.DirectMethodHandleAccessor.invoke (DirectMethodHandleAccessor.java:103)
2026-01-19T16:19:42.7857746Z     at java.lang.reflect.Method.invoke (Method.java:580)
2026-01-19T16:19:42.7859188Z     at org.codehaus.plexus.classworlds.launcher.Launcher.launchEnhanced (Launcher.java:255)
2026-01-19T16:19:42.7860262Z     at org.codehaus.plexus.classworlds.launcher.Launcher.launch (Launcher.java:201)
2026-01-19T16:19:42.7861601Z     at org.codehaus.plexus.classworlds.launcher.Launcher.mainWithExitCode (Launcher.java:361)
2026-01-19T16:19:42.7862711Z     at org.codehaus.plexus.classworlds.launcher.Launcher.main (Launcher.java:314)
2026-01-19T16:19:42.7863510Z [main] ERROR org.apache.maven.cli.MavenCli - 
2026-01-19T16:19:42.7864384Z [main] ERROR org.apache.maven.cli.MavenCli - Re-run Maven using the -X switch to enable full debug logging.
2026-01-19T16:19:42.7865291Z [main] ERROR org.apache.maven.cli.MavenCli - 
2026-01-19T16:19:42.7866400Z [main] ERROR org.apache.maven.cli.MavenCli - For more information about the errors and possible solutions, please read the following articles:
2026-01-19T16:19:42.7867980Z [main] ERROR org.apache.maven.cli.MavenCli - [Help 1] http://cwiki.apache.org/confluence/display/MAVEN/MojoFailureException
2026-01-19T16:19:42.8101022Z 16:19:42 [Info] Trace ID for JFrog Platform logs: 4ed84c1c3545a94b
2026-01-19T16:19:42.8101687Z 16:19:42 [Error] exit status 1
2026-01-19T16:19:42.8125903Z ##[error]Process completed with exit code 1.
2026-01-19T16:19:42.8267894Z Post job cleanup.
2026-01-19T16:19:42.9379626Z ##[group]Checking connection to JFrog Artifactory
2026-01-19T16:19:42.9415877Z [command]/opt/hostedtoolcache/jf/2.88.0/x64/jf rt ping