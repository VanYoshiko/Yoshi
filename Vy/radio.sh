import csv
import os

  # Load the music database from a CSV file
  def load_database(filepath):
  with open(filepath, mode='r') as file:
  reader = csv.DictReader(file)
  return list(reader)

			   # Display entries with alphanumeric selections
			   def display_entries(entries, start_index=0, per_page=10):
			   for i, entry in enumerate(entries[start_index:start_index + per_page], start=1):
				   print(f"{i}. {entry['Artist']} - {entry['Album']} - {entry['Song']}")
				   print(f"\n[N]ext | [P]revious | [Q]uit")

							# Main interactive loop
							def main():
							database_file = "music_db.csv"
							entries = load_database(database_file)
							current_index = 0
							per_page = 5  # Number of entries to display per page

							while True:
								os.system('cls' if os.name == 'nt' else 'clear')  # Clear the screen
								print("=== Music Database ===")
								display_entries(entries, current_index, per_page)

															      # Get user input
															      choice = input("\nSelect an entry (1-5), [N]ext, [P]revious, or [Q]uit: ").strip().lower()

															      if choice == 'n':  # Next page
																      if current_index + per_page < len(entries):
																	      current_index += per_page
																      else:
																	      print("You're at the end of the list.")
																      elif choice == 'p':  # Previous page
																	      if current_index - per_page >= 0:
																		      current_index -= per_page
																	      else:
																		      print("You're at the beginning of the list.")
																	      elif choice == 'q':  # Quit
																		      print("Goodbye!")
																		      break
																	      elif choice.isdigit():  # Select an entry
																		      selection = int(choice) - 1
																		      if 0 <= selection < per_page and current_index + selection < len(entries):
																			      selected_entry = entries[current_index + selection]
																			      print(f"\nYou selected: {selected_entry['Artist']} - {selected_entry['Song']}")
																			      print(f"Filepath: {selected_entry['Filepath']}")
																			      input("\nPress Enter to continue...")
																		      else:
																			      print("Invalid selection. Please try again.")
																		      else:
																			      print("Invalid input. Please try again.")

																			      if __name__ == "__main__":
																				      main()
