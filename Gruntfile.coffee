module.exports = (grunt) ->

  grunt.initConfig
    meta:
      src: 'src/**/*.js'
      specs: 'spec/**/*.js'

    watch:
      run_tests:
        files: ['src/**/*.coffee', 'src/**/*.coffee']
        tasks: 'test'

    jasmine:
      src: '<%= meta.src %>'
      options:
        specs: '<%= meta.specs %>'
        vendor: 'vendor/js/jasmine-given.js'

    coffee:
      compile:
        files:
          'src/kata.js': ['src/*.coffee']
          'spec/kata.js': ['spec/*.coffee']

  grunt.loadNpmTasks('grunt-contrib-jasmine')
  grunt.loadNpmTasks('grunt-contrib-coffee')
  grunt.loadNpmTasks('grunt-contrib-watch')


  grunt.registerTask('test', ['coffee', 'jasmine'])
  grunt.registerTask('default', ['test'])
