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

tasks.jar {
    manifest {
        attributes(
        
        )
    }
    from(sourceSets.main.get().output)
}
