-- SCHEMA FOR CLIENT MANAGEMENT AND MEETING TRACKING
-- By: Felicia Audrey Tanujaya
CREATE TABLE clients (
  client_id INTEGER PRIMARY KEY,
  client_name VARCHAR(255) NOT NULL,
  pic_name VARCHAR(255),
  pic_role VARCHAR(255),
  company_profile TEXT,
  main_product_service VARCHAR(255),
  contact_info VARCHAR(255),
  notes TEXT
);

CREATE TABLE brands (
  brand_id INTEGER PRIMARY KEY,
  client_id INTEGER NOT NULL,
  brand_name VARCHAR(255) NOT NULL,
  brand_profile TEXT,
  website VARCHAR(255),
  FOREIGN KEY (client_id) REFERENCES clients(client_id)
);

CREATE TABLE meetings (
  meeting_id INTEGER PRIMARY KEY,
  client_id INTEGER NOT NULL,
  meeting_date DATE,
  meeting_purpose VARCHAR(255),
  agenda TEXT,
  meeting_summary TEXT,
  recording_link VARCHAR(255),
  prepared_by VARCHAR(255),
  meeting_notes TEXT,
  FOREIGN KEY (client_id) REFERENCES clients(client_id)
);

CREATE TABLE request_pending (
  request_id INTEGER PRIMARY KEY,
  meeting_id INTEGER NOT NULL,
  description TEXT,
  request_date DATE,
  status VARCHAR(50) DEFAULT 'Pending',
  notes TEXT,
  FOREIGN KEY (meeting_id) REFERENCES meetings(meeting_id)
);

CREATE TABLE potential_collaborations (
  potential_id INTEGER PRIMARY KEY,
  meeting_id INTEGER NOT NULL,
  description TEXT,
  potential_value VARCHAR(255),
  next_discussion_date DATE,
  status VARCHAR(50),
  FOREIGN KEY (meeting_id) REFERENCES meetings(meeting_id)
);

-- SAMPLE INSERTION
INSERT INTO clients VALUES
(1, 'Yayasan Saling Jaga', 'Issyatul Mardiah', 'PIC', 'Yayasan sosial di Lombok fokus pendidikan dan aksi', 'Literasi Lingkungan dan Penanaman Pohon', 'email@example.com', 'Catatan tambahan');

INSERT INTO brands VALUES
(1, 1, 'Relasi', 'Brand edukasi sosial dan aksi', 'https://instagram.com/relasi.salingjagaindonesia');

INSERT INTO meetings VALUES
(1, 1, '2025-07-17', 'Perkenalan dan Eksplor Potensi Kolaborasi', 'Perkenalan dan eksplorasi potensi kerja sama', 'Diskusi diberi dana fokus pemberdayaan masyarakat', 'https://drive.google.com/file/d/1owQliC9nYhQpnkdEDPz3_akDdokgkFNR/view', 'Devita Bulandari', 'Yayasan fokus pemberdayaan masyarakat dan merancang proposal kerjasama');

INSERT INTO request_pending VALUES
(1, 1, 'Kirim proposal penanaman dengan detail', '2025-07-17', 'Pending', 'Menunggu kiriman proposal dari Yayasan');

INSERT INTO potential_collaborations VALUES
(1, 1, 'Kolaborasi terkait titik penanaman binaan RELASI di NTB', NULL, NULL, 'Open');
