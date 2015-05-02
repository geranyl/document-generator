module.exports = function(grunt) {
    grunt.initConfig({
        pkg: grunt.file.readJSON('package.json'),
        watch: {
            all: {
                files: ['css/**/*', 'content/**/*', 'template.html'],
                tasks: ['shell'],
                options: {
                    livereload: true,
                    port:9000
                }
            }
        },
        shell: {
            makeDir: {
                command: './buildpandoc.sh'
            }
        },
        // The actual grunt server settings
        connect: {
            options: {
                port: 9000,
                livereload: 35729,
                // Change this to '0.0.0.0' to access the server from outside
                hostname: 'localhost'
            },
            livereload: {
                options: {
                    open: true,
                    base: [
                        'builds'
                    ]
                }
            }
        }
    });

    grunt.loadNpmTasks('grunt-contrib-watch');
    grunt.loadNpmTasks('grunt-shell');
    grunt.loadNpmTasks('grunt-contrib-connect')
    grunt.registerTask('default', [
        'connect',
        'watch'
    ])
};