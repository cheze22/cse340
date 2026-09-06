import pg from 'pg';

const { Pool } = pg;

const pool = new Pool({
  connectionString: process.env.DB_URL,
  ssl: {
    rejectUnauthorized: false
  }
});

const testConnection = async () => {
  const result = await pool.query('SELECT NOW()');
  console.log('Database connection successful:', result.rows[0]);
};

export { pool, testConnection };