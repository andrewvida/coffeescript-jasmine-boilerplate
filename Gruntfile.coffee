module.exports = (grunt) ->

  grunt.initConfig
    meta:
      src: 'src/**/*.js'
      specs: 'spec/**/*.js'

    watch:
        files: '**/*.coffee'
        tasks: ['test']

    jasmine:
      src: '<%= meta.src %>'
      options:
        specs: '<%= meta.specs %>'
        vendor: 'vendor/js/jasmine-given.js'

    coffee:
      compile:
        files:
          'src/kata_src.js': ['src/*.coffee']
          'spec/kata_spec.js': ['spec/*.coffee']

  grunt.loadNpmTasks('grunt-contrib-watch')
  grunt.loadNpmTasks('grunt-contrib-coffee')
  grunt.loadNpmTasks('grunt-contrib-jasmine')


  grunt.registerTask('test', ['coffee', 'jasmine'])
  grunt.registerTask('default', ['test'])
