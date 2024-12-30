plugins {
    java
}

group = ""
version = ""

repositories {
    mavenCentral()
}

dependencies {

}

java {
    toolchain {
        languageVersion.set(JavaLanguageVersion.of(21))
    }
}

tasks.withType(JavaCompile) {
    options.encoding = "UTF-8"
}

tasks.jar {
    manifest {
        attributes(
        
        )
    }
    from(sourceSets.main.get().output)
}
