require('load-grunt-tasks')(grunt); // npm install --save-dev load-grunt-tasks

    grunt.initConfig({
        svgmin: {
            options: {
                plugins: [
                    {
                        removeViewBox: false
                    }, {
                        removeUselessStrokeAndFill: false
                    }
                ]
            },
            dist: {
                files: {
                    'dist/unicorn.svg': 'app/unicorn.svg'
                }
            }
        }
    });

    grunt.registerTask('default', ['svgmin']);