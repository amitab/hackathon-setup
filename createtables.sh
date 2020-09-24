# Creating tables (Assignment 1)
echo "Creating dbs..."
psql -U $POSTGRES_USER -d postgres -f /sql/createtables.sql