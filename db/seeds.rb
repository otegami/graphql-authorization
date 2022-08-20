projects = [
  { name: '猫プロジェクト', description: 'プロジェクトマネージャーにアサインされたプロジェクト' },
  { name: '犬プロジェクト', description: 'チーフプロジェクトマネージャーのみ見れる極秘プロジェクト' }
]
members = [
  { name: 'スコティッシュフォールド', address: '猫小屋一丁目一番地' },
  { name: 'アメリカンショートヘア', address: '猫小屋二丁目二番地' },
  { name: '柴犬', address: '犬小屋一丁目' }
]

ActiveRecord::Base.transaction do
  Project.insert_all!(projects)
  Member.insert_all!(members)
end
