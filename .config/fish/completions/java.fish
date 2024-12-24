function __fish_complete_java_classes
    set -l classpath (commandline -ot | string match -r -- '-cp\s+(\S+)' | string split ' ' | tail -n 1)
    if test -n "$classpath"
        find $classpath -name '*.class' | sed 's/\.class$//' | tr '/' '.'
    else
        find . -name '*.class' | sed 's/\.\///;s/\.class$//' | tr '/' '.'
    end
end

complete -c java -a "(__fish_complete_java_classes)"