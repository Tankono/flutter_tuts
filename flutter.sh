#!/bin/sh
#some function support create fast project fluuter
function create_prj(){
    prj_name=$1
    echo 'create template:'.$prj_name
}

function add_template(){
    template_name=$1
    echo 'create template:'.$template_name
}

function add_module_getx(){
    echo 'create branch'
}

function add_screen(){
    echo 'create branch'
}

function reset_app(){
    echo 'Reset app...'
    rm -f android
    rm -f ios
    flutter create .
    
}

function clean_app(){
    folder=$1
    # cd $folder
    echo 'clean app...'$folder
    flutter clean
    echo 'Remove folder android'
    rm -rf android
    rm -rf .idea
    rm rf .gitpod.yml

    echo 'Remove folder ios'
    rm -rf ios
    echo 'Remove folder web'
    rm -rf web
    echo 'Remove folder web'
    rm -rf windows
    echo 'Remove folder macos'
    rm -rf macos
    echo 'Remove folder linux'
    rm -rf linux
    rm -rf .dart_tool
    rm -rf build
    rm -rf .flutter-plugins
    rm -fr .flutter-plugins-dependencies
    rm -rf .gitpod.Dockerfile
    rm -rf .metadata
    rm -rf analysis_options.yaml
    rm -rf *.iml
}

function run_web(){
    echo 'Run Web...'
    flutter run -d chrome
}
#Use for MacOS
#Some process will be consume the resource of the pc, we will kill them for smooth to
#run flutter project
function clean_pc(){
    echo 'kill some process unused'
    # ps aux
    # mds_store
    # pkill -9 387
    # sudo killall -s SIGINT "mds_store"
    # sudo kill -9 387


    ps aux | grep "java"



}
# clean_app
# flutter create --project-name flutter_tuts --org hdisoft.app.tuts . 
# clean_pc
run_web
