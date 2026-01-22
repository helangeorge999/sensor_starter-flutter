// Top-level build.gradle.kts for Flutter + Kotlin 1.9.0

buildscript {
    repositories {
        google()
        mavenCentral()
    }
    dependencies {
        // Kotlin plugin compatible with Flutter stable
        classpath("org.jetbrains.kotlin:kotlin-gradle-plugin:1.9.0")
        // Android Gradle Plugin compatible with Gradle 8.3.x
        classpath("com.android.tools.build:gradle:8.3.1")
    }
}

allprojects {
    repositories {
        google()
        mavenCentral()
    }
}

// Custom build directory setup
val newBuildDir: Directory =
    rootProject.layout.buildDirectory
        .dir("../../build")
        .get()
rootProject.layout.buildDirectory.value(newBuildDir)

subprojects {
    val newSubprojectBuildDir: Directory = newBuildDir.dir(project.name)
    project.layout.buildDirectory.value(newSubprojectBuildDir)
}

// Make sure all subprojects are evaluated after app module
subprojects {
    project.evaluationDependsOn(":app")
}

// Clean task
tasks.register<Delete>("clean") {
    delete(rootProject.layout.buildDirectory)
}
