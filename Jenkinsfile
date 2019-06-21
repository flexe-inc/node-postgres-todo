#!groovy

import org.csanchez.jenkins.plugins.kubernetes.pipeline.PodTemplateAction

/*
 * Must clear pod templates before declaring new templates.
 *
 * https://lists.openshift.redhat.com/openshift-archives/users/2017-February/msg00062.html
 * https://issues.jenkins-ci.org/browse/JENKINS-42184
 */
def clearTemplateNames() {
    currentBuild.rawBuild.getAction(PodTemplateAction.class)?.stack?.clear()
}
pipeline{
    agent none
    options {
        // Parallelism stages should always
        parallelsAlwaysFailFast()
    }
    stages {
        stage("PR Tests") {
            parallel {
                stage("Placeholder") {
                   agent {
                        kubernetes {
                            label "flexe-interview-${UUID.randomUUID().toString()}"
                            defaultContainer 'jnlp'
                            yamlFile 'jenkins/PRTestPod.yaml'
                        }
                    }
                    steps {
                        clearTemplateNames()
                        container('db') {
                            sh "echo \"hello world!\""
                        }
                    }
                }
            }
        }
    }
}
