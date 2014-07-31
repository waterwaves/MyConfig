var fs = require('fs');

var options = {
  option: undefined
};
process.argv.forEach(function(ele, index) {
  if (index < 2) return;
  if (/^--.*=.*/.test(ele)) {
    var pair = ele.split('=');
    options[pair[0].replace(/^--/, '')] = pair[1];
  } else {
    console.log('Cannot read options!');
    process.exit(1);
  }
});

function SparseMatcher(files) {
  if (! Array.isArray(files)) {
    this.error = {
      reason: "files are not in an Array!"
    }
    return;
  }
  if (files.length === 0) {
    this.error = {
      reason: "No directory here!"
    }
    return;
  }
  this.files = files;
}
SparseMatcher.prototype.match = function(sparseLetter) {
  sparseLetter = sparseLetter || '';
  var filtered = this.files.filter(function(file) {
    var pattern = sparseLetter.split(/\s*/).join('.*');
    return new RegExp(pattern).test(file.replace('shutterstock', ''));
  });
  return filtered;
};

var path = options['path'];

if (!path) {
  console.error('path needed!');
  process.exit(1);
}

var pathArray = path.split('/');
var first_dir = pathArray.shift();
pathArray.unshift((first_dir === '~') ? process.env['HOME'] : first_dir);
path = pathArray.join('/');

var files = fs.readdirSync(path);
files = files.filter(function(file) {
  return fs.statSync(path + '/' + file).isDirectory();
});

var smatcher = new SparseMatcher(files);
if (smatcher.error) {
  console.error("SparseMatcher Error: " + smatcher.error.reason);
  process.exit(1);
}

var result = smatcher.match(options['keyword']);

var option = options['option'];
if (option !== undefined) {
  if (+option > 0 && +option <= result.length && option == parseInt(option)) {
    singleResult = result[options['option'] - 1];
    result = [];
    result.push(singleResult);
  } else {
    console.error('Out of the range, man!');
    process.exit(1);
  }
}


if (result.length > 1) {
  console.log('Here are a list of directories:');
  result.forEach(function(ele, index) {
    console.log(++index + '. ' + ele);
  });
} else if (result.length === 1) {
  console.log(path + '/' + result[0]);
} else {
  console.log('No related directories!');
}
