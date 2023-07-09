const { exec } = require('child_process');

const url = 'https://example.com';
let command;

switch (process.platform) {
  case 'darwin': // macOS
    command = `open "${url}"`;
    break;
  case 'win32': // Windows
    command = `start "" "${url}"`;
    break;
  default: // Linux or other platforms
    command = `xdg-open "${url}"`;
}

exec(command, (error) => {
  if (error) {
    console.error(`Error opening URL: ${error}`);
  } else {
    console.log('Website opened successfully!');
  }
});

