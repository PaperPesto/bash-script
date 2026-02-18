# Bash Script Learning Repository

This repository contains a collection of Bash scripts created for learning and practicing shell scripting concepts. The scripts demonstrate various fundamental and advanced Bash programming techniques.

## 📁 Repository Structure

```
bash-script/
├── git/                          # Git-related utilities
├── minecraft/                    # Minecraft server management scripts
├── powershell/                   # PowerShell scripts
└── *.sh                          # Various Bash learning scripts
```

## 📚 Script Categories

### Basic Scripts
- **helloworld.sh** - Simple "Hello World" script
- **hellobatistuta.sh** - Basic greeting script
- **helloworld2.sh** - Extended hello world example

### Variables and Parameters
- **variables.sh** - Demonstrates global variable usage in functions
- **local_variables.sh** - Shows local variable scoping in functions
- **positional_parameters.sh** - Working with script arguments ($1, $2, $3, etc.)
- **string_operators.sh** - String manipulation and default value operators (${var:-default}, ${var:=default})

### Functions
- **functions1.sh** - Function definition and global variable scope demonstration

### Special Variables
- **asterix_and_snail.sh** - Demonstrates $* and IFS (Internal Field Separator)
- **asterix_and_snail2.sh** - Additional examples of special variables

### Data Processing
- **highest.sh**, **highest2.sh**, **highest3.sh** - Scripts for sorting and filtering data
- **read-csv.sh** - CSV file reading example
- **albums.txt** - Sample data file

### Specialized Scripts
- **showtemp.sh** - Temperature display utility
- **gpiobashscript.sh** - GPIO (General Purpose Input/Output) script
- **deploy-abc-produzione.sh** - Deployment script example

### Git Utilities
Located in the `git/` directory:
- **git-useful-command.txt** - Collection of useful Git commands
- **repo-migr.sh**, **repo-migr-2.sh**, **repo-migr-csv.sh** - Repository migration utilities

### Minecraft Server Management
Located in the `minecraft/` directory:
- **jobmanager.sh** - Minecraft server job manager
- **RefRender.sh** - Rendering utilities
- **minemongo.sh** - MongoDB integration script

## 🚀 Usage

Most scripts can be executed directly:

```bash
# Make script executable (if not already)
chmod +x script_name.sh

# Run the script
./script_name.sh
```

### Examples

**Positional Parameters:**
```bash
./positional_parameters.sh arg1 arg2 arg3
```

**Using the highest script:**
```bash
./highest.sh filename.txt 10
```

**Minecraft Job Manager:**
```bash
cd minecraft
sudo ./jobmanager.sh world_name 0 -j2
```

## 📖 Learning Topics Covered

This repository covers the following Bash scripting concepts:

1. **Basic Scripting**
   - Echo commands
   - Script execution
   - Shebang lines

2. **Variables**
   - Global variables
   - Local variables
   - Variable scope in functions

3. **Parameters**
   - Positional parameters ($1, $2, $3, ...)
   - Special parameters ($*, $@, $#)
   - Internal Field Separator (IFS)

4. **String Operations**
   - Default values (${var:-default})
   - Variable assignment with defaults (${var:=default})
   - Parameter expansion

5. **Functions**
   - Function definition
   - Variable scope
   - Return values

6. **Data Processing**
   - Sorting with `sort`
   - Filtering with `head`
   - CSV processing

## 📋 Requirements

- Bash shell (version 3.0 or higher)
- Standard Unix utilities (sort, head, etc.)
- For Minecraft scripts: appropriate permissions and Java runtime

## 🔍 Notes

- Some files with `~` suffix are backup files created by text editors
- The repository contains both learning examples and practical utility scripts
- Scripts may require modifications to adapt to your specific environment

## 📝 License

This repository is for educational purposes.

## 🤝 Contributing

Feel free to add more examples or improve existing scripts for learning purposes.
