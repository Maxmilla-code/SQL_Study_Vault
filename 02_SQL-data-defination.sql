/* ==============================================================================
   SQL DDL (Data Definition Language)
   ------------------------------------------------------------------------------
   DDL commands define and manage the structure of a database. This script
   walks through the core operations for building, changing, and removing tables.

   Contents:
     1. CREATE - Build new tables
     2. ALTER  - Change the structure of existing tables
     3. DROP   - Delete tables permanently
============================================================================== */


/* ==============================================================================
   1. CREATE
   ------------------------------------------------------------------------------
   Define a new table by specifying its columns, data types, and constraints.
============================================================================== */
/* Create a new table called persons 
   with columns: id, person_name, birth_date, and phone */
CREATE TABLE persons (
    id INT NOT NULL,
    person_name VARCHAR(50) NOT NULL,
    birth_date DATE,
    phone VARCHAR(15) NOT NULL,
    CONSTRAINT pk_persons PRIMARY KEY (id)
)

/* ============================================================================== 
   ALTER
=============================================================================== */

-- Add a new column called email to the persons table
ALTER TABLE persons
ADD email VARCHAR(50) NOT NULL

-- Remove the column phone from the persons table
ALTER TABLE persons
DROP COLUMN phone

/* ============================================================================== 
   DROP
=============================================================================== */

-- Delete the table persons from the database
DROP TABLE persons
