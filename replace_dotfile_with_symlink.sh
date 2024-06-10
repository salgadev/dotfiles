# Check if the file path argument is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <file_or_folder_path>"
  exit 1
fi

FILE_PATH=$1
TARGET_DIR=~/dotfiles/config
ITEM_NAME=$(basename "$FILE_PATH")
TARGET_PATH="$TARGET_DIR/$ITEM_NAME"

# Create the target directory if it doesn't exist
mkdir -p "$TARGET_DIR"

# Move the file or folder to the target directory
mv "$FILE_PATH" "$TARGET_PATH"

# Create a symbolic link from the target path to the original location
ln -s "$TARGET_PATH" "$FILE_PATH"

echo "Moved $FILE_PATH to $TARGET_PATH and created a symlink at $FILE_PATH"