# Navigate to your target folder
cd /Users/sak/StudioProjects/mps/build/host/outputs/repo/io/flutter/plugins/urllauncher/url_launcher_android_release/1.0.1/

# Sign all .jar files
for file in *.jar; do
    gpg -ab "$file"
done

# Sign all .pom files
for file in *.pom; do
    gpg -ab "$file"
done

# Sign other artifact files
for file in *.{asc,war,ear,zip}; do
    if [ -f "$file" ]; then
        gpg -ab "$file"
    fi
done