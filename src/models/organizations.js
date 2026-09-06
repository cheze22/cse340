import { pool } from './db.js';

const getAllOrganizations = async () => {
  const query = `
    SELECT
      organization_id,
      name,
      description,
      contact_email,
      logo_filename
    FROM organization
    ORDER BY organization_id;
  `;

  const result = await pool.query(query);

  return result.rows;
};

export { getAllOrganizations };