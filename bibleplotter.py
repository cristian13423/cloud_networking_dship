import xml.etree.ElementTree as ET
import matplotlib.pyplot as plt

# ---------------------------
# Load and parse the GEXF file
# ---------------------------
file_path = "ntgreek.gexf"  # replace with your file path

tree = ET.parse(file_path)
root = tree.getroot()
ns = {"g": "http://www.gexf.net/1.3"}

# ---------------------------
# Define canonical New Testament book order
# ---------------------------
book_order = [
    "matthew", "mark", "luke", "john", "acts", "romans",
    "first_corinthians", "second_corinthians", "galatians",
    "ephesians", "philippians", "colossians",
    "first_thessalonians", "second_thessalonians",
    "first_timothy", "second_timothy", "titus", "philemon",
    "hebrews", "james", "first_peter", "second_peter",
    "first_john", "second_john", "third_john", "jude", "revelation"
]

# ---------------------------
# Parse nodes and attributes
# ---------------------------
nodes_data = {}
for node in root.findall(".//g:nodes/g:node", ns):
    node_id = node.get("id")
    node_label = node.get("label")
    attvalues = node.find("g:attvalues", ns)
    node_attrs = {"label": node_label}
    if attvalues is not None:
        for att in attvalues.findall("g:attvalue", ns):
            key = att.get("for")
            value = att.get("value")
            if key in ["num_chapters", "avg_date", "num_hits"]:
                value = int(value)
            elif key == "love_den":
                value = float(value)
            node_attrs[key] = value
    nodes_data[node_id] = node_attrs

# ---------------------------
# Prepare lists for plotting
# ---------------------------
book_indices = []
labels = []
num_chapters = []
avg_date = []
num_hits = []
love_den = []

for idx, book_id in enumerate(book_order, start=1):
    if book_id in nodes_data:
        book_indices.append(idx)
        labels.append(nodes_data[book_id]["label"])
        num_chapters.append(nodes_data[book_id]["num_chapters"])
        avg_date.append(nodes_data[book_id]["avg_date"])
        num_hits.append(nodes_data[book_id]["num_hits"])
        love_den.append(nodes_data[book_id]["love_den"])

# ---------------------------
# Plot attributes vs book index
# ---------------------------
plt.figure(figsize=(12, 8))
plt.plot(book_indices, num_chapters, marker='o', label="Number of Chapters")
plt.plot(book_indices, avg_date, marker='s', label="Average Date Written")
plt.plot(book_indices, num_hits, marker='^', label="Number of times love is mention")
plt.plot(book_indices, love_den, marker='d', label="Love Density")

plt.xticks(book_indices, labels, rotation=90)
plt.xlabel("New Testament Book")
plt.ylabel("Attribute Value")
plt.title("New Testament Attributes by Book")
plt.legend()
plt.grid(True)
plt.tight_layout()
plt.show()
