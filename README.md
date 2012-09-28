# RailsCasts Scripts

Scripts used in the production of RailsCasts. http://railscasts.com/

**These scripts do the following:**

1. Encode video into different formats

```bash
rcencode 123-some-episode.mov
```

# Installation

### Prerequisites: [Homebrew](http://mxcl.github.com/homebrew/)

1. Clone this repo somewhere and symlink the tools to your path
  * `ln -nsf /Users/jon/Sites/Rails/bolstr/railscasts-scripts/bin/* /usr/local/bin`
1. Download the [Handbrake command line tool](http://handbrake.fr/downloads2.php) and install (copy or move) it somewhere accessible to your path.
  * I chose `/usr/local/bin/HandBrakeCLI`
1. `brew install ffmpeg --with-theora --with-libvpx --with-libvorbis`
1. edit the `/usr/local/bin/rcencode` script and edit the webm ffmpeg lines -b option to read -b:a.
  * Example: `run "ffmpeg -pass 1 -passlogfile '#{output}' -keyint_min 0 -g 250 -skip_threshold 0 -qmin 1 -qmax 51 -i '#{input}' -vcodec libvpx -b:a 358400 -an -f webm -y NUL -threads 0"`

Everything should 'just work' now... hopefully!