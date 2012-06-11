# RailsCasts Scripts

Scripts used in the production of RailsCasts. http://railscasts.com/

This is designed to be used as a plugin for [Oh My ZSH](https://github.com/robbyrussell/oh-my-zsh). To add it, symlink the project directory into `~/.oh-my-zsh/custom/plugins` and add it to your `.zshrc` file.

**These scripts do the following:**

1. Generate a new project directory with the proper templates

```bash
rcnew '123 Some Episode'
```

2. Process edited video by adding intro and normalizing and cleaning up audio (no script yet)

3. Encode video into different formats

```bash
rcencode 123-some-episode.mov
```

4. Upload them to the server

```bash
rcupload path/to/123-some-episode/
```

If you have any suggestions on how to improve this, especially regards to encoding, please add an issue to this project.
